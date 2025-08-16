import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../aggregates/referral_reward.dart';
import '../value_objects/reward_amount.dart';

abstract class ReferralRewardRepository {
  Future<Either<String, ReferralReward>> findById(Uuid id);
  
  Future<Either<String, ReferralReward>> findByUserId(Uuid userId);
  
  Future<Either<String, ReferralReward>> findOrCreateForUser(Uuid userId);
  
  Future<Either<String, List<ReferralReward>>> findTopEarners({
    required int limit,
    DateTime? fromDate,
    DateTime? toDate,
  });
  
  Future<Either<String, void>> save(ReferralReward reward);
  
  Future<Either<String, void>> delete(Uuid id);
  
  Future<Either<String, RewardAmount>> getTotalEarnedByUser(Uuid userId);
  
  Future<Either<String, RewardAmount>> getTotalPendingByUser(Uuid userId);
  
  Future<Either<String, Map<String, dynamic>>> getStatistics({
    DateTime? fromDate,
    DateTime? toDate,
  });
}