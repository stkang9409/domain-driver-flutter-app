// lib/contexts/notification/application/use_cases/send_notification_use_case.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/contexts/notification/application/commands/send_notification_command.dart';
import 'package:my_ddd_app/contexts/notification/domain/entities/push_notification.dart';
import 'package:my_ddd_app/contexts/notification/domain/events/notification_events.dart';
import 'package:my_ddd_app/contexts/notification/domain/failures/failures.dart';
import 'package:my_ddd_app/contexts/notification/domain/repositories/notification_repository.dart';
import 'package:my_ddd_app/contexts/notification/domain/services/notification_sender.dart';
import 'package:my_ddd_app/contexts/notification/infrastructure/repositories/notification_repository.dart';
import 'package:my_ddd_app/contexts/notification/infrastructure/services/fcm_notification_sender.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';

part 'send_notification_use_case.g.dart';

class SendNotificationUseCase {
  final NotificationRepository _notificationRepository;
  final NotificationTemplateRepository _templateRepository;
  final NotificationSender _sender;
  final EventBus _eventBus;

  SendNotificationUseCase(
    this._notificationRepository,
    this._templateRepository,
    this._sender,
    this._eventBus,
  );

  Future<Either<Failure, void>> execute(SendNotificationCommand command) async {
    // 1. 사용자 설정 확인
    final settingsResult =
        await _notificationRepository.getSettings(command.userId);

    return settingsResult.fold(
      (failure) => left(failure),
      (settings) async {
        // 2. 알림 수신 가능 여부 확인
        if (!settings.canReceiveNotification(command.type)) {
          return left(
              NotificationFailure('User has disabled this notification type'));
        }

        // 3. 템플릿 가져오기
        final templateResult =
            await _templateRepository.getTemplate(command.templateId);

        return templateResult.fold(
          (failure) => left(failure),
          (template) async {
            // 4. 변수 검증
            if (!template.validateVariables(command.variables)) {
              return left(
                  ValidationFailure('Missing required template variables'));
            }

            // 5. 알림 생성
            final notification = PushNotification.create(
              userId: Uuid.fromString(command.userId),
              title: template.renderTitle(command.variables),
              body: template.renderBody(command.variables),
              type: command.type,
              data: command.variables,
              scheduledAt: command.scheduledAt,
            );

            // 6. 알림 저장
            final saveResult =
                await _notificationRepository.saveNotification(notification);

            return saveResult.fold(
              (failure) => left(failure),
              (savedNotification) async {
                // 7. 즉시 전송인 경우
                if (command.scheduledAt == null ||
                    command.scheduledAt!.isBefore(DateTime.now())) {
                  final sendResult =
                      await _sender.sendPushNotification(savedNotification);

                  return sendResult.fold(
                    (failure) {
                      // 실패 이벤트 발행
                      _eventBus.publish(NotificationFailedEvent(
                        notificationId: savedNotification.id.value,
                        userId: command.userId,
                        reason: failure.message,
                      ));
                      return left(failure);
                    },
                    (_) {
                      // 성공 이벤트 발행
                      _eventBus.publish(NotificationSentEvent(
                        notificationId: savedNotification.id.value,
                        userId: command.userId,
                        title: savedNotification.title,
                      ));

                      // 상태 업데이트
                      _notificationRepository.saveNotification(
                        savedNotification.markAsSent(),
                      );

                      return right(unit);
                    },
                  );
                }

                // 예약 알림은 별도 스케줄러가 처리
                return right(unit);
              },
            );
          },
        );
      },
    );
  }
}

@riverpod
SendNotificationUseCase sendNotificationUseCase(Ref ref) {
  return SendNotificationUseCase(
    ref.watch(notificationRepositoryProvider),
    ref.watch(notificationTemplateRepositoryProvider),
    ref.watch(notificationSenderProvider),
    ref.watch(eventBusProvider),
  );
}
