import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import '../../domain/repositories/referral_link_repository.dart';
import '../../domain/services/referral_service.dart';
import '../../domain/events/referral_events.dart';
import '../commands/apply_referral_code_command.dart';

class ApplyReferralHandler {
  final ReferralLinkRepository _linkRepository;
  final ReferralService _referralService;
  final EventBus _eventBus;

  ApplyReferralHandler(
    this._linkRepository,
    this._referralService,
    this._eventBus,
  );

  Future<Either<String, void>> execute(ApplyReferralCodeCommand command) async {
    final linkResult = await _linkRepository.findByCode(command.referralCode);

    return linkResult.fold(
      (failure) => left(failure),
      (link) async {
        final fraudResult = await _referralService.detectFraud(
          referrerId: link.referrerId.value,
          refereeId: command.refereeId,
          context: command.metadata ?? {},
        );

        final isFraud = fraudResult.fold(
          (_) => false,
          (result) => result,
        );

        if (isFraud) {
          return left('Suspicious referral activity detected');
        }

        final applyResult = link.applyReferral(
          refereeId: Uuid.fromString(command.refereeId),
          refereeName: command.refereeName,
        );

        return applyResult.fold(
          (error) => left(error),
          (updatedLink) async {
            final saveResult = await _linkRepository.save(updatedLink);
            
            return saveResult.fold(
              (error) => left(error),
              (_) {
                final relationship = updatedLink.relationships.last;
                _eventBus.publish(ReferralAppliedEvent(
                  referralId: relationship.id.value,
                  referrerId: link.referrerId.value,
                  refereeId: command.refereeId,
                  referralCode: link.code.value,
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