import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../value_objects/referral_code.dart';
import '../value_objects/referral_status.dart';
import '../entities/referral_relationship.dart';

part 'referral_link.freezed.dart';
part 'referral_link.g.dart';

@freezed
abstract class ReferralLink with _$ReferralLink {
  const ReferralLink._();

  const factory ReferralLink({
    required Uuid id,
    required Uuid referrerId,
    required Uuid programId,
    required ReferralCode code,
    required String shareableUrl,
    required int clickCount,
    required List<ReferralRelationship> relationships,
    required Map<String, dynamic> metadata,
    required DateTime createdAt,
    DateTime? expiresAt,
  }) = _ReferralLink;

  factory ReferralLink.fromJson(Map<String, dynamic> json) =>
      _$ReferralLinkFromJson(json);

  factory ReferralLink.create({
    required Uuid referrerId,
    required Uuid programId,
    String? customCode,
    DateTime? expiresAt,
  }) {
    final code = customCode != null
        ? ReferralCode.custom(customCode)
        : ReferralCode.generate();
    final id = Uuid.generate();

    return ReferralLink(
      id: id,
      referrerId: referrerId,
      programId: programId,
      code: code,
      shareableUrl: _generateShareableUrl(code),
      clickCount: 0,
      relationships: [],
      metadata: {},
      createdAt: DateTime.now(),
      expiresAt: expiresAt,
    );
  }

  static String _generateShareableUrl(ReferralCode code) {
    return 'https://app.example.com/ref/${code.value}';
  }

  ReferralLink recordClick({
    String? source,
    Map<String, dynamic>? metadata,
  }) {
    return copyWith(
      clickCount: clickCount + 1,
      metadata: {
        ...this.metadata,
        'lastClickAt': DateTime.now().toIso8601String(),
        if (source != null) 'lastClickSource': source,
        if (metadata != null) ...metadata,
      },
    );
  }

  Either<String, ReferralLink> applyReferral({
    required Uuid refereeId,
    required String refereeName,
  }) {
    if (expiresAt != null && DateTime.now().isAfter(expiresAt!)) {
      return left('Referral link has expired');
    }

    if (referrerId == refereeId) {
      return left('Cannot refer yourself');
    }

    if (relationships.any((r) => r.refereeId == refereeId)) {
      return left('User has already been referred');
    }

    final relationship = ReferralRelationship.create(
      referrerId: referrerId,
      refereeId: refereeId,
      refereeName: refereeName,
      referralLinkId: id,
    );

    return right(copyWith(
      relationships: [...relationships, relationship],
    ));
  }

  Either<String, ReferralLink> completeReferral(Uuid refereeId) {
    final relationshipIndex = relationships.indexWhere(
      (r) => r.refereeId == refereeId,
    );

    if (relationshipIndex == -1) {
      return left('Referral relationship not found');
    }

    final relationship = relationships[relationshipIndex];
    if (!relationship.canComplete) {
      return left('Cannot complete this referral');
    }

    final updatedRelationships = [...relationships];
    updatedRelationships[relationshipIndex] = relationship.complete();

    return right(copyWith(
      relationships: updatedRelationships,
    ));
  }

  Either<String, ReferralLink> rejectReferral(Uuid refereeId, String reason) {
    final relationshipIndex = relationships.indexWhere(
      (r) => r.refereeId == refereeId,
    );

    if (relationshipIndex == -1) {
      return left('Referral relationship not found');
    }

    final relationship = relationships[relationshipIndex];
    if (!relationship.canReject) {
      return left('Cannot reject this referral');
    }

    final updatedRelationships = [...relationships];
    updatedRelationships[relationshipIndex] = relationship.reject(reason);

    return right(copyWith(
      relationships: updatedRelationships,
    ));
  }

  int get successfulReferralCount => relationships
      .where((r) => r.status == const ReferralStatus.completed())
      .length;

  int get pendingReferralCount => relationships
      .where((r) => r.status == const ReferralStatus.pending())
      .length;

  List<ReferralRelationship> get activeRelationships => relationships
      .where((r) => r.status == const ReferralStatus.completed())
      .toList();

  bool get isExpired =>
      expiresAt != null && DateTime.now().isAfter(expiresAt!);

  bool get isActive => !isExpired;

  double get conversionRate {
    if (clickCount == 0) return 0;
    return successfulReferralCount / clickCount;
  }

}