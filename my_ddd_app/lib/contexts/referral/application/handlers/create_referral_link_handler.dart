import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import '../../domain/aggregates/referral_link.dart';
import '../../domain/repositories/referral_link_repository.dart';
import '../../domain/repositories/referral_program_repository.dart';
import '../../domain/events/referral_events.dart';
import '../commands/create_referral_link_command.dart';

class CreateReferralLinkHandler {
  final ReferralLinkRepository _linkRepository;
  final ReferralProgramRepository _programRepository;
  final EventBus _eventBus;

  CreateReferralLinkHandler(
    this._linkRepository,
    this._programRepository,
    this._eventBus,
  );

  Future<Either<String, ReferralLink>> execute(
    CreateReferralLinkCommand command,
  ) async {
    final programResult = await _programRepository.findById(
      Uuid.fromString(command.programId),
    );

    return programResult.fold(
      (error) => left(error),
      (program) async {
        if (!program.isValidNow()) {
          return left('Referral program is not active');
        }

        if (command.customCode != null) {
          final codeExistsResult = await _linkRepository.codeExists(
            command.customCode!,
          );
          
          final codeExists = codeExistsResult.fold(
            (_) => false,
            (exists) => exists,
          );
          
          if (codeExists) {
            return left('Custom code already exists');
          }
        }

        final existingLinkResult = await _linkRepository.findByReferrerAndProgram(
          Uuid.fromString(command.referrerId),
          Uuid.fromString(command.programId),
        );

        final hasExistingLink = existingLinkResult.fold(
          (_) => false,
          (_) => true,
        );

        if (hasExistingLink) {
          return existingLinkResult;
        }

        try {
          final newLink = ReferralLink.create(
            referrerId: Uuid.fromString(command.referrerId),
            programId: Uuid.fromString(command.programId),
            customCode: command.customCode,
            expiresAt: command.expiresAt,
          );

          final saveResult = await _linkRepository.save(newLink);

          return saveResult.fold(
            (error) => left(error),
            (_) {
              _eventBus.publish(ReferralLinkCreatedEvent(
                linkId: newLink.id.value,
                referrerId: newLink.referrerId.value,
                code: newLink.code.value,
              ));
              return right(newLink);
            },
          );
        } catch (e) {
          return left('Failed to create referral link: ${e.toString()}');
        }
      },
    );
  }
}