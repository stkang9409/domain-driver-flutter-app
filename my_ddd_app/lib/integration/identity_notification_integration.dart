// lib/integration/identity_notification_integration.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_ddd_app/contexts/identity/domain/events/domain_event.dart';
import 'package:my_ddd_app/contexts/notification/application/commands/send_notification_command.dart';
import 'package:my_ddd_app/contexts/notification/application/use_cases/send_notification_use_case.dart';
import 'package:my_ddd_app/contexts/notification/domain/aggregates/notification_settings.dart';
import 'package:my_ddd_app/contexts/notification/domain/constants/notification_templates.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';

part 'identity_notification_integration.g.dart';

@Riverpod(keepAlive: true)
void identityNotificationIntegration(Ref ref) {
  final eventBus = ref.watch(eventBusProvider);
  final sendNotification = ref.watch(sendNotificationUseCaseProvider);

  // UserRegisteredEvent 구독
  eventBus.on<UserRegisteredEvent>().listen((event) async {
    await sendNotification.execute(
      SendNotificationCommand(
        userId: event.aggregateId,
        templateId: NotificationTemplates.welcome,
        variables: {'name': event.name},
        type: NotificationType.system,
      ),
    );
  });
}
