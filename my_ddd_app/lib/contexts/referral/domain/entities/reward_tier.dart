import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/reward_amount.dart';

part 'reward_tier.freezed.dart';
part 'reward_tier.g.dart';

@freezed
abstract class RewardTier with _$RewardTier {
  const RewardTier._();

  const factory RewardTier({
    required String id,
    required String name,
    required int minReferrals,
    required double multiplier,
    required RewardAmount bonusAmount,
    required Map<String, dynamic> benefits,
    required DateTime createdAt,
  }) = _RewardTier;

  factory RewardTier.fromJson(Map<String, dynamic> json) =>
      _$RewardTierFromJson(json);

  factory RewardTier.defaultTier() {
    return RewardTier(
      id: 'default',
      name: 'Bronze',
      minReferrals: 0,
      multiplier: 1.0,
      bonusAmount: RewardAmount.zero(),
      benefits: {},
      createdAt: DateTime.now(),
    );
  }
}