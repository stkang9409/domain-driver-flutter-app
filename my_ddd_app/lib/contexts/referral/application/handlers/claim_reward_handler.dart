import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import '../../domain/repositories/referral_reward_repository.dart';
import '../../domain/value_objects/reward_amount.dart';
import '../../domain/events/referral_events.dart';
import '../commands/claim_reward_command.dart';

class ClaimRewardHandler {
  final ReferralRewardRepository _rewardRepository;
  final EventBus _eventBus;

  ClaimRewardHandler(
    this._rewardRepository,
    this._eventBus,
  );

  Future<Either<String, void>> execute(ClaimRewardCommand command) async {
    final rewardResult = await _rewardRepository.findByUserId(
      Uuid.fromString(command.userId),
    );

    return rewardResult.fold(
      (error) => left(error),
      (reward) async {
        if (reward == null) {
          return left('Reward not found');
        }

        final claimResult = reward.claimReward(
          amount: RewardAmount(
            value: command.amount,
            currency: 'USD',
          ),
          claimMethod: command.claimMethod,
        );

        return claimResult.fold(
          (error) => left(error),
          (updatedReward) async {
            final saveResult = await _rewardRepository.save(updatedReward);

            return saveResult.fold(
              (error) => left(error),
              (_) {
                _eventBus.publish(RewardClaimedEvent(
                  userId: command.userId,
                  amount: command.amount,
                  claimMethod: command.claimMethod,
                ));
                return right(unit);
              },
            );
          },
        );
      },
    );
  }
}
