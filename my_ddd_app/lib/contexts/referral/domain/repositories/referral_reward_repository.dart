import 'package:fpdart/fpdart.dart';
import '../aggregates/referral_reward.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

abstract class ReferralRewardRepository {
  Future<Either<String, ReferralReward>> save(ReferralReward reward);
  Future<Either<String, ReferralReward>> findById(Uuid id);
  Future<Either<String, ReferralReward?>> findByUserId(Uuid userId);
  Future<Either<String, List<ReferralReward>>> findAll();
  Future<Either<String, void>> delete(Uuid id);
}