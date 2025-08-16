import 'package:flutter_test/flutter_test.dart';
import 'package:my_ddd_app/contexts/referral/domain/aggregates/referral_reward.dart';
import 'package:my_ddd_app/contexts/referral/domain/entities/reward_transaction.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/reward_amount.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

void main() {
  group('ReferralReward', () {
    late Uuid userId;

    setUp(() {
      userId = Uuid.generate();
    });

    group('createForUser', () {
      test('should create reward with zero amounts', () {
        final reward = ReferralReward.createForUser(userId);

        expect(reward.userId, equals(userId));
        expect(reward.totalEarned.value, equals(0));
        expect(reward.totalClaimed.value, equals(0));
        expect(reward.pendingAmount.value, equals(0));
        expect(reward.transactions, isEmpty);
        expect(reward.createdAt, isNotNull);
        expect(reward.updatedAt, isNotNull);
      });
    });

    group('earnReward', () {
      test('should add earned reward successfully', () {
        final reward = ReferralReward.createForUser(userId);
        final amount = const RewardAmount(value: 100, currency: 'USD');

        final result = reward.earnReward(
          amount: amount,
          referralId: 'ref123',
          description: 'Referral bonus',
        );

        expect(result.isRight(), isTrue);
        result.fold(
          (error) => fail('Should not fail: $error'),
          (updatedReward) {
            expect(updatedReward.totalEarned.value, equals(100));
            expect(updatedReward.pendingAmount.value, equals(100));
            expect(updatedReward.transactions, hasLength(1));
            
            final transaction = updatedReward.transactions.first;
            expect(transaction.type, equals(TransactionType.earned));
            expect(transaction.amount.value, equals(100));
            expect(transaction.referenceId, equals('ref123'));
            expect(transaction.description, equals('Referral bonus'));
          },
        );
      });

      test('should accumulate multiple earned rewards', () {
        var reward = ReferralReward.createForUser(userId);
        
        reward = reward.earnReward(
          amount: const RewardAmount(value: 100, currency: 'USD'),
          referralId: 'ref1',
          description: 'First',
        ).getOrElse((_) => reward);

        reward = reward.earnReward(
          amount: const RewardAmount(value: 50, currency: 'USD'),
          referralId: 'ref2',
          description: 'Second',
        ).getOrElse((_) => reward);

        expect(reward.totalEarned.value, equals(150));
        expect(reward.pendingAmount.value, equals(150));
        expect(reward.transactions, hasLength(2));
      });
    });

    group('claimReward', () {
      late ReferralReward rewardWithBalance;

      setUp(() {
        rewardWithBalance = ReferralReward.createForUser(userId)
            .earnReward(
              amount: const RewardAmount(value: 100, currency: 'USD'),
              referralId: 'ref123',
              description: 'Earned',
            )
            .getOrElse((_) => ReferralReward.createForUser(userId));
      });

      test('should claim reward successfully', () {
        final result = rewardWithBalance.claimReward(
          amount: const RewardAmount(value: 50, currency: 'USD'),
          claimMethod: 'bank_transfer',
        );

        expect(result.isRight(), isTrue);
        result.fold(
          (error) => fail('Should not fail: $error'),
          (updatedReward) {
            expect(updatedReward.totalClaimed.value, equals(50));
            expect(updatedReward.pendingAmount.value, equals(50));
            expect(updatedReward.transactions, hasLength(2));
            
            final claimTransaction = updatedReward.transactions.last;
            expect(claimTransaction.type, equals(TransactionType.claimed));
            expect(claimTransaction.amount.value, equals(50));
            expect(claimTransaction.description, contains('bank_transfer'));
          },
        );
      });

      test('should reject claim exceeding pending amount', () {
        final result = rewardWithBalance.claimReward(
          amount: const RewardAmount(value: 150, currency: 'USD'),
          claimMethod: 'bank_transfer',
        );

        expect(result.isLeft(), isTrue);
        result.fold(
          (error) => expect(error, equals('Insufficient pending amount')),
          (_) => fail('Should not succeed'),
        );
      });

      test('should reject negative claim amount', () {
        final result = rewardWithBalance.claimReward(
          amount: const RewardAmount(value: -10, currency: 'USD'),
          claimMethod: 'bank_transfer',
        );

        expect(result.isLeft(), isTrue);
        result.fold(
          (error) => expect(error, equals('Claim amount must be positive')),
          (_) => fail('Should not succeed'),
        );
      });

      test('should reject zero claim amount', () {
        final result = rewardWithBalance.claimReward(
          amount: const RewardAmount(value: 0, currency: 'USD'),
          claimMethod: 'bank_transfer',
        );

        expect(result.isLeft(), isTrue);
        result.fold(
          (error) => expect(error, equals('Claim amount must be positive')),
          (_) => fail('Should not succeed'),
        );
      });
    });

    group('reverseReward', () {
      late ReferralReward rewardWithBalance;

      setUp(() {
        rewardWithBalance = ReferralReward.createForUser(userId)
            .earnReward(
              amount: const RewardAmount(value: 100, currency: 'USD'),
              referralId: 'ref123',
              description: 'Earned',
            )
            .getOrElse((_) => ReferralReward.createForUser(userId));
      });

      test('should reverse reward successfully', () {
        final result = rewardWithBalance.reverseReward(
          amount: const RewardAmount(value: 50, currency: 'USD'),
          reason: 'Fraudulent referral',
          referralId: 'ref123',
        );

        expect(result.isRight(), isTrue);
        result.fold(
          (error) => fail('Should not fail: $error'),
          (updatedReward) {
            expect(updatedReward.totalEarned.value, equals(50));
            expect(updatedReward.pendingAmount.value, equals(50));
            expect(updatedReward.transactions, hasLength(2));
            
            final reverseTransaction = updatedReward.transactions.last;
            expect(reverseTransaction.type, equals(TransactionType.reversed));
            expect(reverseTransaction.description, contains('Fraudulent referral'));
          },
        );
      });

      test('should handle reversal when pending is less than reversal amount', () {
        var reward = rewardWithBalance.claimReward(
          amount: const RewardAmount(value: 80, currency: 'USD'),
          claimMethod: 'bank',
        ).getOrElse((_) => rewardWithBalance);

        final result = reward.reverseReward(
          amount: const RewardAmount(value: 50, currency: 'USD'),
          reason: 'Fraud',
          referralId: 'ref123',
        );

        expect(result.isRight(), isTrue);
        result.fold(
          (error) => fail('Should not fail: $error'),
          (updatedReward) {
            expect(updatedReward.totalEarned.value, equals(50));
            expect(updatedReward.pendingAmount.value, equals(0));
          },
        );
      });

      test('should reject reversal exceeding total earned', () {
        final result = rewardWithBalance.reverseReward(
          amount: const RewardAmount(value: 150, currency: 'USD'),
          reason: 'Fraud',
          referralId: 'ref123',
        );

        expect(result.isLeft(), isTrue);
        result.fold(
          (error) => expect(error, equals('Cannot reverse more than total earned')),
          (_) => fail('Should not succeed'),
        );
      });
    });

    group('getTransactionHistory', () {
      late ReferralReward rewardWithTransactions;

      setUp(() async {
        var reward = ReferralReward.createForUser(userId);
        
        await Future.delayed(const Duration(milliseconds: 10));
        reward = reward.earnReward(
          amount: const RewardAmount(value: 100, currency: 'USD'),
          referralId: 'ref1',
          description: 'First',
        ).getOrElse((_) => reward);

        await Future.delayed(const Duration(milliseconds: 10));
        reward = reward.earnReward(
          amount: const RewardAmount(value: 50, currency: 'USD'),
          referralId: 'ref2',
          description: 'Second',
        ).getOrElse((_) => reward);

        await Future.delayed(const Duration(milliseconds: 10));
        reward = reward.claimReward(
          amount: const RewardAmount(value: 30, currency: 'USD'),
          claimMethod: 'bank',
        ).getOrElse((_) => reward);

        rewardWithTransactions = reward;
      });

      test('should return all transactions when no filter', () {
        final history = rewardWithTransactions.getTransactionHistory();
        
        expect(history, hasLength(3));
      });

      test('should filter by transaction type', () {
        final earnedOnly = rewardWithTransactions.getTransactionHistory(
          type: TransactionType.earned,
        );
        
        expect(earnedOnly, hasLength(2));
        expect(earnedOnly.every((t) => t.type == TransactionType.earned), isTrue);
      });

      test('should sort by date descending', () {
        final history = rewardWithTransactions.getTransactionHistory();
        
        for (int i = 0; i < history.length - 1; i++) {
          expect(
            history[i].createdAt.isAfter(history[i + 1].createdAt) ||
            history[i].createdAt.isAtSameMomentAs(history[i + 1].createdAt),
            isTrue,
          );
        }
      });

      test('should apply limit', () {
        final limited = rewardWithTransactions.getTransactionHistory(limit: 2);
        
        expect(limited, hasLength(2));
      });
    });

    group('statistics', () {
      test('hasClaimableRewards should be true when pending > 0', () {
        final reward = ReferralReward.createForUser(userId)
            .earnReward(
              amount: const RewardAmount(value: 100, currency: 'USD'),
              referralId: 'ref',
              description: 'desc',
            )
            .getOrElse((_) => ReferralReward.createForUser(userId));

        expect(reward.hasClaimableRewards, isTrue);
      });

      test('hasClaimableRewards should be false when pending = 0', () {
        final reward = ReferralReward.createForUser(userId);
        
        expect(reward.hasClaimableRewards, isFalse);
      });

      test('claimRate should calculate correctly', () {
        var reward = ReferralReward.createForUser(userId)
            .earnReward(
              amount: const RewardAmount(value: 100, currency: 'USD'),
              referralId: 'ref',
              description: 'desc',
            )
            .getOrElse((_) => ReferralReward.createForUser(userId));

        reward = reward.claimReward(
          amount: const RewardAmount(value: 25, currency: 'USD'),
          claimMethod: 'bank',
        ).getOrElse((_) => reward);

        expect(reward.claimRate, equals(0.25));
      });

      test('claimRate should be 0 when no earnings', () {
        final reward = ReferralReward.createForUser(userId);
        
        expect(reward.claimRate, equals(0));
      });
    });
  });
}