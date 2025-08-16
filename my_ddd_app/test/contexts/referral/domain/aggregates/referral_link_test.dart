import 'package:flutter_test/flutter_test.dart';
import 'package:my_ddd_app/contexts/referral/domain/aggregates/referral_link.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/referral_code.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/referral_status.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

void main() {
  group('ReferralLink', () {
    late Uuid referrerId;
    late Uuid programId;

    setUp(() {
      referrerId = Uuid.generate();
      programId = Uuid.generate();
    });

    group('create', () {
      test('should create a referral link with generated code', () {
        final link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
        );

        expect(link.id.value, isNotEmpty);
        expect(link.referrerId, equals(referrerId));
        expect(link.programId, equals(programId));
        expect(link.code.value, isNotEmpty);
        expect(link.shareableUrl, contains(link.code.value));
        expect(link.clickCount, equals(0));
        expect(link.relationships, isEmpty);
        expect(link.metadata, isEmpty);
        expect(link.createdAt, isNotNull);
        expect(link.expiresAt, isNull);
      });

      test('should create a referral link with custom code', () {
        final customCode = 'CUSTOM123';
        final link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
          customCode: customCode,
        );

        expect(link.code.value, equals(customCode));
        expect(link.shareableUrl, contains(customCode));
      });

      test('should create a referral link with expiration', () {
        final expiresAt = DateTime.now().add(const Duration(days: 30));
        final link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
          expiresAt: expiresAt,
        );

        expect(link.expiresAt, equals(expiresAt));
      });
    });

    group('recordClick', () {
      test('should increment click count', () {
        final link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
        );

        final updatedLink = link.recordClick();

        expect(updatedLink.clickCount, equals(1));
        expect(updatedLink.metadata['lastClickAt'], isNotNull);
      });

      test('should record click source', () {
        final link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
        );

        final updatedLink = link.recordClick(source: 'facebook');

        expect(updatedLink.metadata['lastClickSource'], equals('facebook'));
      });

      test('should add custom metadata', () {
        final link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
        );

        final updatedLink = link.recordClick(
          metadata: {'campaign': 'summer2024'},
        );

        expect(updatedLink.metadata['campaign'], equals('summer2024'));
      });
    });

    group('applyReferral', () {
      late ReferralLink link;
      late Uuid refereeId;

      setUp(() {
        link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
        );
        refereeId = Uuid.generate();
      });

      test('should apply referral successfully', () {
        final result = link.applyReferral(
          refereeId: refereeId,
          refereeName: 'John Doe',
        );

        expect(result.isRight(), isTrue);
        result.fold(
          (error) => fail('Should not fail: $error'),
          (updatedLink) {
            expect(updatedLink.relationships, hasLength(1));
            final relationship = updatedLink.relationships.first;
            expect(relationship.refereeId, equals(refereeId));
            expect(relationship.refereeName, equals('John Doe'));
            expect(relationship.status, equals(const ReferralStatus.pending()));
          },
        );
      });

      test('should reject self-referral', () {
        final result = link.applyReferral(
          refereeId: referrerId,
          refereeName: 'Self',
        );

        expect(result.isLeft(), isTrue);
        result.fold(
          (error) => expect(error, equals('Cannot refer yourself')),
          (_) => fail('Should not succeed'),
        );
      });

      test('should reject duplicate referral', () {
        final firstResult = link.applyReferral(
          refereeId: refereeId,
          refereeName: 'John Doe',
        );

        firstResult.fold(
          (error) => fail('First referral should succeed: $error'),
          (updatedLink) {
            final secondResult = updatedLink.applyReferral(
              refereeId: refereeId,
              refereeName: 'John Doe',
            );

            expect(secondResult.isLeft(), isTrue);
            secondResult.fold(
              (error) => expect(error, equals('User has already been referred')),
              (_) => fail('Should not succeed'),
            );
          },
        );
      });

      test('should reject expired link', () {
        final expiredLink = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
          expiresAt: DateTime.now().subtract(const Duration(days: 1)),
        );

        final result = expiredLink.applyReferral(
          refereeId: refereeId,
          refereeName: 'John Doe',
        );

        expect(result.isLeft(), isTrue);
        result.fold(
          (error) => expect(error, equals('Referral link has expired')),
          (_) => fail('Should not succeed'),
        );
      });
    });

    group('statistics', () {
      test('should count successful referrals', () {
        final link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
        );

        final withReferrals = link
            .applyReferral(
              refereeId: Uuid.generate(),
              refereeName: 'User1',
            )
            .getOrElse((_) => link)
            .applyReferral(
              refereeId: Uuid.generate(),
              refereeName: 'User2',
            )
            .getOrElse((_) => link);

        final completed = withReferrals
            .completeReferral(withReferrals.relationships[0].refereeId)
            .getOrElse((_) => withReferrals);

        expect(completed.successfulReferralCount, equals(1));
        expect(completed.pendingReferralCount, equals(1));
      });

      test('should calculate conversion rate', () {
        var link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
        );

        link = link.recordClick().recordClick().recordClick();

        final withReferral = link
            .applyReferral(
              refereeId: Uuid.generate(),
              refereeName: 'User1',
            )
            .getOrElse((_) => link);

        final completed = withReferral
            .completeReferral(withReferral.relationships[0].refereeId)
            .getOrElse((_) => withReferral);

        expect(completed.conversionRate, closeTo(0.333, 0.01));
      });

      test('should return zero conversion rate when no clicks', () {
        final link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
        );

        expect(link.conversionRate, equals(0));
      });
    });

    group('status checks', () {
      test('should identify expired link', () {
        final expiredLink = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
          expiresAt: DateTime.now().subtract(const Duration(days: 1)),
        );

        expect(expiredLink.isExpired, isTrue);
        expect(expiredLink.isActive, isFalse);
      });

      test('should identify active link', () {
        final activeLink = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
          expiresAt: DateTime.now().add(const Duration(days: 1)),
        );

        expect(activeLink.isExpired, isFalse);
        expect(activeLink.isActive, isTrue);
      });

      test('should consider link without expiration as active', () {
        final link = ReferralLink.create(
          referrerId: referrerId,
          programId: programId,
        );

        expect(link.isExpired, isFalse);
        expect(link.isActive, isTrue);
      });
    });
  });
}