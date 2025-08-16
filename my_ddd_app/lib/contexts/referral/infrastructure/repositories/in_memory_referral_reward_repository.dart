import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../../domain/aggregates/referral_reward.dart';
import '../../domain/repositories/referral_reward_repository.dart';

class InMemoryReferralRewardRepository implements ReferralRewardRepository {
  final Map<String, ReferralReward> _storage = {};
  final Map<String, ReferralReward> _userIndex = {};

  @override
  Future<Either<String, ReferralReward>> save(ReferralReward reward) async {
    try {
      _storage[reward.id.value] = reward;
      _userIndex[reward.userId.value] = reward;
      return right(reward);
    } catch (e) {
      return left('Failed to save referral reward: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, ReferralReward>> findById(Uuid id) async {
    final reward = _storage[id.value];
    if (reward == null) {
      return left('Referral reward not found with id: ${id.value}');
    }
    return right(reward);
  }

  @override
  Future<Either<String, ReferralReward?>> findByUserId(Uuid userId) async {
    return right(_userIndex[userId.value]);
  }

  @override
  Future<Either<String, List<ReferralReward>>> findAll() async {
    return right(_storage.values.toList());
  }

  @override
  Future<Either<String, void>> delete(Uuid id) async {
    final reward = _storage[id.value];
    if (reward != null) {
      _storage.remove(id.value);
      _userIndex.remove(reward.userId.value);
    }
    return right(unit);
  }
}