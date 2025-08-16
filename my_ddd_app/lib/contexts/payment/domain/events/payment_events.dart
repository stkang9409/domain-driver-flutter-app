import 'package:my_ddd_app/shared/domain/events/domain_event.dart';

class PaymentInitiatedEvent extends DomainEvent {
  final String orderId;
  final String payerId;
  final double amount;
  final String currency;

  PaymentInitiatedEvent({
    required String paymentId,
    required this.orderId,
    required this.payerId,
    required this.amount,
    required this.currency,
    DateTime? occurredAt,
  }) : super(aggregateId: paymentId, occurredAt: occurredAt);
}

class PaymentProcessingEvent extends DomainEvent {
  final String orderId;
  final String paymentMethodType;

  PaymentProcessingEvent({
    required String paymentId,
    required this.orderId,
    required this.paymentMethodType,
    DateTime? occurredAt,
  }) : super(aggregateId: paymentId, occurredAt: occurredAt);
}

class PaymentCompletedEvent extends DomainEvent {
  final String orderId;
  final String payerId;
  final double amount;
  final String transactionId;

  PaymentCompletedEvent({
    required String paymentId,
    required this.orderId,
    required this.payerId,
    required this.amount,
    required this.transactionId,
    DateTime? occurredAt,
  }) : super(aggregateId: paymentId, occurredAt: occurredAt);
}

class PaymentFailedEvent extends DomainEvent {
  final String orderId;
  final String reason;

  PaymentFailedEvent({
    required String paymentId,
    required this.orderId,
    required this.reason,
    DateTime? occurredAt,
  }) : super(aggregateId: paymentId, occurredAt: occurredAt);
}

class PaymentRefundedEvent extends DomainEvent {
  final String orderId;
  final double refundAmount;
  final String reason;

  PaymentRefundedEvent({
    required String paymentId,
    required this.orderId,
    required this.refundAmount,
    required this.reason,
    DateTime? occurredAt,
  }) : super(aggregateId: paymentId, occurredAt: occurredAt);
}