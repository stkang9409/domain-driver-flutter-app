// lib/contexts/notification/domain/entities/notification_template.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/contexts/notification/domain/aggregates/notification_settings.dart';

part 'notification_template.freezed.dart';

@freezed
abstract class NotificationTemplate with _$NotificationTemplate {
  const NotificationTemplate._();

  const factory NotificationTemplate({
    required String id,
    required String name,
    required String titleTemplate,
    required String bodyTemplate,
    required NotificationType type,
    required List<String> requiredVariables,
    required Map<String, dynamic> defaultData,
    required bool isActive,
  }) = _NotificationTemplate;

  String renderTitle(Map<String, dynamic> variables) {
    String result = titleTemplate;
    variables.forEach((key, value) {
      result = result.replaceAll('{{$key}}', value.toString());
    });
    return result;
  }

  String renderBody(Map<String, dynamic> variables) {
    String result = bodyTemplate;
    variables.forEach((key, value) {
      result = result.replaceAll('{{$key}}', value.toString());
    });
    return result;
  }

  bool validateVariables(Map<String, dynamic> variables) {
    return requiredVariables.every((key) => variables.containsKey(key));
  }
}
