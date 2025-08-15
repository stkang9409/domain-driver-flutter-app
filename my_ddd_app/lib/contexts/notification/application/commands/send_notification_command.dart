// lib/contexts/notification/application/use_cases/send_notification_use_case.dart

import 'package:my_ddd_app/contexts/notification/domain/aggregates/notification_settings.dart';

class SendNotificationCommand {
  final String userId;
  final String templateId;
  final Map<String, dynamic> variables;
  final NotificationType type;
  final DateTime? scheduledAt;

  SendNotificationCommand({
    required this.userId,
    required this.templateId,
    required this.variables,
    required this.type,
    this.scheduledAt,
  });
}
