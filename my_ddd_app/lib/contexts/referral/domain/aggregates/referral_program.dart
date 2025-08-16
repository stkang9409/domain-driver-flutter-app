import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../entities/reward_policy.dart';
import '../entities/reward_tier.dart';

part 'referral_program.freezed.dart';
part 'referral_program.g.dart';

@freezed
abstract class ReferralProgram with _$ReferralProgram {
  const ReferralProgram._();

  const factory ReferralProgram({
    required Uuid id,
    required String name,
    required String description,
    required bool isActive,
    required DateTime startDate,
    DateTime? endDate,
    required RewardPolicy defaultRewardPolicy,
    required List<RewardTier> rewardTiers,
    required Map<String, dynamic> metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ReferralProgram;

  factory ReferralProgram.fromJson(Map<String, dynamic> json) =>
      _$ReferralProgramFromJson(json);

  factory ReferralProgram.create({
    required String name,
    required String description,
    required RewardPolicy defaultRewardPolicy,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    final id = Uuid.generate();
    return ReferralProgram(
      id: id,
      name: name,
      description: description,
      isActive: true,
      startDate: startDate ?? DateTime.now(),
      endDate: endDate,
      defaultRewardPolicy: defaultRewardPolicy,
      rewardTiers: [],
      metadata: {},
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  Either<String, ReferralProgram> addRewardTier(RewardTier tier) {
    if (rewardTiers.any((t) => t.minReferrals == tier.minReferrals)) {
      return left('Tier with same minimum referrals already exists');
    }

    final updatedTiers = [...rewardTiers, tier]
      ..sort((a, b) => a.minReferrals.compareTo(b.minReferrals));

    return right(copyWith(
      rewardTiers: updatedTiers,
      updatedAt: DateTime.now(),
    ));
  }

  RewardTier getCurrentTier(int referralCount) {
    final sortedTiers = rewardTiers
      ..sort((a, b) => b.minReferrals.compareTo(a.minReferrals));
    
    for (final tier in sortedTiers) {
      if (referralCount >= tier.minReferrals) {
        return tier;
      }
    }
    
    return RewardTier.defaultTier();
  }

  ReferralProgram activate() {
    return copyWith(
      isActive: true,
      updatedAt: DateTime.now(),
    );
  }

  ReferralProgram deactivate() {
    return copyWith(
      isActive: false,
      updatedAt: DateTime.now(),
    );
  }

  bool isValidNow() {
    final now = DateTime.now();
    if (now.isBefore(startDate)) return false;
    if (endDate != null && now.isAfter(endDate!)) return false;
    return isActive;
  }

  ReferralProgram updatePolicy(RewardPolicy newPolicy) {
    return copyWith(
      defaultRewardPolicy: newPolicy,
      updatedAt: DateTime.now(),
    );
  }

  ReferralProgram updateMetadata(Map<String, dynamic> newMetadata) {
    return copyWith(
      metadata: {...metadata, ...newMetadata},
      updatedAt: DateTime.now(),
    );
  }

}