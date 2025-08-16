import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_status.freezed.dart';
part 'referral_status.g.dart';

@freezed
abstract class ReferralStatus with _$ReferralStatus {
  const ReferralStatus._();

  const factory ReferralStatus.pending() = PendingStatus;
  const factory ReferralStatus.completed() = CompletedStatus;
  const factory ReferralStatus.rejected(String reason) = RejectedStatus;
  const factory ReferralStatus.expired() = ExpiredStatus;

  factory ReferralStatus.fromJson(Map<String, dynamic> json) =>
      _$ReferralStatusFromJson(json);

  bool get isPending => this is PendingStatus;
  bool get isCompleted => this is CompletedStatus;
  bool get isRejected => this is RejectedStatus;
  bool get isExpired => this is ExpiredStatus;

  String get displayName => when(
        pending: () => 'Pending',
        completed: () => 'Completed',
        rejected: (_) => 'Rejected',
        expired: () => 'Expired',
      );

  bool get canTransitionToCompleted => isPending;
  bool get canTransitionToRejected => isPending;
  bool get canTransitionToExpired => isPending;
}