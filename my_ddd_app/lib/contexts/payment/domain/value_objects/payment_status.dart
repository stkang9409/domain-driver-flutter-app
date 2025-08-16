import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_status.freezed.dart';
part 'payment_status.g.dart';

@freezed
abstract class PaymentStatus with _$PaymentStatus {
  const PaymentStatus._();

  const factory PaymentStatus.pending() = PendingPaymentStatus;
  const factory PaymentStatus.processing() = ProcessingPaymentStatus;
  const factory PaymentStatus.completed() = CompletedPaymentStatus;
  const factory PaymentStatus.failed(String reason) = FailedPaymentStatus;
  const factory PaymentStatus.refunded({
    required double amount,
    required String reason,
  }) = RefundedPaymentStatus;
  const factory PaymentStatus.cancelled() = CancelledPaymentStatus;

  factory PaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusFromJson(json);

  bool get isPending => this is PendingPaymentStatus;
  bool get isProcessing => this is ProcessingPaymentStatus;
  bool get isCompleted => this is CompletedPaymentStatus;
  bool get isFailed => this is FailedPaymentStatus;
  bool get isRefunded => this is RefundedPaymentStatus;
  bool get isCancelled => this is CancelledPaymentStatus;

  bool get isSuccessful => isCompleted;
  bool get canRefund => isCompleted;
  bool get canRetry => isFailed || isCancelled;
  bool get isFinal => isCompleted || isRefunded;

  String get displayName => when(
        pending: () => 'Pending',
        processing: () => 'Processing',
        completed: () => 'Completed',
        failed: (_) => 'Failed',
        refunded: (_, __) => 'Refunded',
        cancelled: () => 'Cancelled',
      );

  String get description => when(
        pending: () => 'Payment is waiting to be processed',
        processing: () => 'Payment is being processed',
        completed: () => 'Payment has been successfully completed',
        failed: (reason) => 'Payment failed: $reason',
        refunded: (amount, reason) => 'Refunded \$$amount: $reason',
        cancelled: () => 'Payment was cancelled',
      );
}