import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/reward_amount.dart';

part 'reward_policy.freezed.dart';
part 'reward_policy.g.dart';

@freezed
abstract class RewardPolicy with _$RewardPolicy {
  const RewardPolicy._();

  const factory RewardPolicy({
    required String id,
    required RewardType type,
    required RewardAmount referrerReward,
    required RewardAmount refereeReward,
    required RewardCondition condition,
    required int validityDays,
    required Map<String, dynamic> metadata,
  }) = _RewardPolicy;

  factory RewardPolicy.fromJson(Map<String, dynamic> json) =>
      _$RewardPolicyFromJson(json);

  bool isEligible(Map<String, dynamic> context) {
    return condition.when<bool>(
      immediate: () => true,
      afterPurchase: (minAmount) =>
          ((context['purchaseAmount'] as int?) ?? 0) >= minAmount,
      afterSignup: (daysAfter) {
        final signupDate = context['signupDate'] as DateTime?;
        if (signupDate == null) return false;
        return DateTime.now().difference(signupDate).inDays >= daysAfter;
      },
    );
  }
}

enum RewardType { points, cash, discount, gift }

@freezed
abstract class RewardCondition with _$RewardCondition {
  const factory RewardCondition.immediate() = ImmediateCondition;
  const factory RewardCondition.afterPurchase(int minAmount) =
      AfterPurchaseCondition;
  const factory RewardCondition.afterSignup(int daysAfter) =
      AfterSignupCondition;

  factory RewardCondition.fromJson(Map<String, dynamic> json) =>
      _$RewardConditionFromJson(json);
}