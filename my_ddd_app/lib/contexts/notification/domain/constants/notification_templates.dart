// lib/contexts/notification/domain/constants/notification_templates.dart

/// Notification template identifiers
///
/// This class provides type-safe constants for notification templates
/// to avoid hardcoding template IDs throughout the codebase.
abstract class NotificationTemplates {
  // System notifications
  static const String welcome = 'welcome';
  static const String accountActivated = 'account_activated';
  static const String passwordReset = 'password_reset';
  static const String passwordChanged = 'password_changed';
  static const String emailVerification = 'email_verification';

  // User activity notifications
  static const String loginAlert = 'login_alert';
  static const String profileUpdated = 'profile_updated';
  static const String accountDeleted = 'account_deleted';

  // Transaction notifications
  static const String paymentSuccessful = 'payment_successful';
  static const String paymentFailed = 'payment_failed';
  static const String subscriptionRenewed = 'subscription_renewed';
  static const String subscriptionExpired = 'subscription_expired';

  // Social notifications
  static const String friendRequest = 'friend_request';
  static const String messageReceived = 'message_received';
  static const String commentReceived = 'comment_received';
  static const String mentionReceived = 'mention_received';

  // Marketing notifications
  static const String promotion = 'promotion';
  static const String newsletter = 'newsletter';
  static const String productUpdate = 'product_update';

  // Admin notifications
  static const String systemMaintenance = 'system_maintenance';
  static const String securityAlert = 'security_alert';
  static const String policyUpdate = 'policy_update';
}
