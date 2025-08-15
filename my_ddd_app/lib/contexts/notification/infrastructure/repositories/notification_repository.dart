import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/src/either.dart';
import 'package:my_ddd_app/contexts/notification/domain/aggregates/notification_settings.dart';
import 'package:my_ddd_app/contexts/notification/domain/entities/notification_template.dart';
import 'package:my_ddd_app/contexts/notification/domain/entities/push_notification.dart';
import 'package:my_ddd_app/contexts/notification/domain/repositories/notification_repository.dart';
import 'package:my_ddd_app/contexts/notification/domain/services/notification_sender.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';
import 'package:my_ddd_app/shared/domain/annotations/unimplemented.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_repository.g.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  @override
  Future<Either<Failure, PushNotification>> saveNotification(
      PushNotification notification) async {
    return right(notification);
  }

  @override
  @Unimplemented('Need to implement getNotifications with database query')
  Future<Either<Failure, List<PushNotification>>> getNotifications(
      {required String userId, int? limit, DateTime? after}) {
    // TODO: implement getNotifications
    throw UnimplementedError();
  }

  @override
  @Unimplemented('Need to implement getSettings from user preferences')
  Future<Either<Failure, NotificationSettings>> getSettings(String userId) {
    // TODO: implement getSettings
    throw UnimplementedError();
  }

  @override
  @Unimplemented('Need to implement markAsRead status update')
  Future<Either<Failure, void>> markAsRead(String notificationId) {
    // TODO: implement markAsRead
    throw UnimplementedError();
  }

  @override
  @Unimplemented('Need to implement saveSettings persistence')
  Future<Either<Failure, NotificationSettings>> saveSettings(
      NotificationSettings settings) {
    // TODO: implement saveSettings
    throw UnimplementedError();
  }
}

class NotificationTemplateRepositoryImpl
    implements NotificationTemplateRepository {
  @override
  @Unimplemented('Need to fetch template from template storage')
  Future<Either<Failure, NotificationTemplate>> getTemplate(String id) async {
    throw UnimplementedError();
  }

  @override
  @Unimplemented('Need to query active templates from database')
  Future<Either<Failure, List<NotificationTemplate>>> getActiveTemplates() {
    // TODO: implement getActiveTemplates
    throw UnimplementedError();
  }

  @override
  @Unimplemented('Need to persist template to database')
  Future<Either<Failure, NotificationTemplate>> saveTemplate(
      NotificationTemplate template) {
    // TODO: implement saveTemplate
    throw UnimplementedError();
  }
}

class DeviceTokenRepositoryImpl implements DeviceTokenRepository {
  @override
  @Unimplemented('Need to register FCM/APNS token')
  Future<Either<Failure, String>> registerToken(String token) async {
    throw UnimplementedError();
  }

  @override
  @Unimplemented('Need to fetch user device tokens from storage')
  Future<Either<Failure, List<String>>> getTokensForUser(String userId) {
    // TODO: implement getTokensForUser
    throw UnimplementedError();
  }

  @override
  @Unimplemented('Need to remove device token from storage')
  Future<Either<Failure, void>> removeToken(String token) {
    // TODO: implement removeToken
    throw UnimplementedError();
  }

  @override
  @Unimplemented('Need to save device token to database')
  Future<Either<Failure, void>> saveToken(
      {required String userId,
      required String token,
      required DeviceType deviceType}) {
    // TODO: implement saveToken
    throw UnimplementedError();
  }
}

@riverpod
NotificationRepository notificationRepository(Ref ref) {
  return NotificationRepositoryImpl();
}

@riverpod
NotificationTemplateRepository notificationTemplateRepository(Ref ref) {
  return NotificationTemplateRepositoryImpl();
}

@riverpod
DeviceTokenRepository deviceTokenRepository(Ref ref) {
  return DeviceTokenRepositoryImpl();
}
