import 'package:flutter_test/flutter_test.dart';
import 'package:my_ddd_app/contexts/referral/domain/entities/reward_policy.dart';
import 'package:my_ddd_app/contexts/referral/domain/value_objects/reward_amount.dart';

void main() {
  group('RewardPolicy', () {
    late RewardPolicy policy;

    setUp(() {
      policy = const RewardPolicy(
        id: 'policy1',
        type: RewardType.points,
        referrerReward: RewardAmount(value: 100, currency: 'USD'),
        refereeReward: RewardAmount(value: 50, currency: 'USD'),
        condition: RewardCondition.immediate(),
        validityDays: 30,
        metadata: {},
      );
    });

    group('isEligible', () {
      test('immediate condition should always return true', () {
        final immediatePolicy = policy.copyWith(
          condition: const RewardCondition.immediate(),
        );
        
        expect(immediatePolicy.isEligible({}), isTrue);
        expect(immediatePolicy.isEligible({'anything': 'value'}), isTrue);
      });

      test('afterPurchase condition should check purchase amount', () {
        final purchasePolicy = policy.copyWith(
          condition: const RewardCondition.afterPurchase(100),
        );
        
        expect(
          purchasePolicy.isEligible({'purchaseAmount': 150}),
          isTrue,
        );
        expect(
          purchasePolicy.isEligible({'purchaseAmount': 100}),
          isTrue,
        );
        expect(
          purchasePolicy.isEligible({'purchaseAmount': 50}),
          isFalse,
        );
        expect(
          purchasePolicy.isEligible({}),
          isFalse,
        );
      });

      test('afterSignup condition should check days after signup', () {
        final signupPolicy = policy.copyWith(
          condition: const RewardCondition.afterSignup(7),
        );
        
        final tenDaysAgo = DateTime.now().subtract(const Duration(days: 10));
        final fiveDaysAgo = DateTime.now().subtract(const Duration(days: 5));
        
        expect(
          signupPolicy.isEligible({'signupDate': tenDaysAgo}),
          isTrue,
        );
        expect(
          signupPolicy.isEligible({'signupDate': fiveDaysAgo}),
          isFalse,
        );
        expect(
          signupPolicy.isEligible({}),
          isFalse,
        );
      });
    });

    group('RewardType', () {
      test('should have all expected types', () {
        expect(RewardType.values, contains(RewardType.points));
        expect(RewardType.values, contains(RewardType.cash));
        expect(RewardType.values, contains(RewardType.discount));
        expect(RewardType.values, contains(RewardType.gift));
      });
    });

    group('RewardCondition', () {
      test('immediate condition should be created', () {
        const condition = RewardCondition.immediate();
        
        condition.when(
          immediate: () => expect(true, isTrue),
          afterPurchase: (_) => fail('Should not be afterPurchase'),
          afterSignup: (_) => fail('Should not be afterSignup'),
        );
      });

      test('afterPurchase condition should store min amount', () {
        const condition = RewardCondition.afterPurchase(100);
        
        condition.when(
          immediate: () => fail('Should not be immediate'),
          afterPurchase: (amount) => expect(amount, equals(100)),
          afterSignup: (_) => fail('Should not be afterSignup'),
        );
      });

      test('afterSignup condition should store days after', () {
        const condition = RewardCondition.afterSignup(7);
        
        condition.when(
          immediate: () => fail('Should not be immediate'),
          afterPurchase: (_) => fail('Should not be afterPurchase'),
          afterSignup: (days) => expect(days, equals(7)),
        );
      });
    });
  });
}