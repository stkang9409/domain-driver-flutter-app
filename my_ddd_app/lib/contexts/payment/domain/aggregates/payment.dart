import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/shared/domain/events/domain_event.dart';
import '../value_objects/payment_amount.dart';
import '../value_objects/payment_status.dart';
import '../entities/payment_method.dart';
import '../events/payment_events.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

/// Payment aggregate wrapper that handles domain events
class PaymentAggregate {
  final Payment payment;
  final List<DomainEvent> domainEvents;

  PaymentAggregate({
    required this.payment,
    List<DomainEvent>? domainEvents,
  }) : domainEvents = domainEvents ?? [];

  void addEvent(DomainEvent event) {
    domainEvents.add(event);
  }

  void clearEvents() {
    domainEvents.clear();
  }
}

@freezed
abstract class Payment with _$Payment {
  const Payment._();

  const factory Payment({
    required Uuid id,
    required Uuid orderId,
    required Uuid payerId,
    required PaymentAmount amount,
    required PaymentMethod paymentMethod,
    required PaymentStatus status,
    required String description,
    String? transactionId,
    Map<String, dynamic>? metadata,
    DateTime? processedAt,
    DateTime? completedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  static PaymentAggregate create({
    required Uuid orderId,
    required Uuid payerId,
    required PaymentAmount amount,
    required PaymentMethod paymentMethod,
    required String description,
    Map<String, dynamic>? metadata,
  }) {
    final payment = Payment(
      id: Uuid.generate(),
      orderId: orderId,
      payerId: payerId,
      amount: amount,
      paymentMethod: paymentMethod,
      status: const PaymentStatus.pending(),
      description: description,
      metadata: metadata,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    
    final aggregate = PaymentAggregate(payment: payment);
    aggregate.addEvent(PaymentInitiatedEvent(
      paymentId: payment.id.value,
      orderId: orderId.value,
      payerId: payerId.value,
      amount: amount.totalAmount,
      currency: amount.currency,
    ));
    
    return aggregate;
  }

  Either<String, PaymentAggregate> startProcessing(String paymentMethodType) {
    if (!status.isPending) {
      return left('Payment must be pending to start processing');
    }
    if (!amount.isValidForPayment()) {
      return left('Invalid payment amount');
    }
    if (!paymentMethod.canUse) {
      return left('Payment method cannot be used');
    }
    
    final updatedPayment = copyWith(
      status: const PaymentStatus.processing(),
      processedAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    
    final aggregate = PaymentAggregate(payment: updatedPayment);
    aggregate.addEvent(PaymentProcessingEvent(
      paymentId: id.value,
      orderId: orderId.value,
      paymentMethodType: paymentMethodType,
    ));
    
    return right(aggregate);
  }

  Either<String, PaymentAggregate> complete(String transactionId) {
    if (!status.isProcessing) {
      return left('Payment must be processing to complete');
    }
    
    final updatedPayment = copyWith(
      status: const PaymentStatus.completed(),
      transactionId: transactionId,
      completedAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    
    final aggregate = PaymentAggregate(payment: updatedPayment);
    aggregate.addEvent(PaymentCompletedEvent(
      paymentId: id.value,
      orderId: orderId.value,
      payerId: payerId.value,
      amount: amount.totalAmount,
      transactionId: transactionId,
    ));
    
    return right(aggregate);
  }

  Either<String, Payment> markAsFailed(String reason) {
    if (!status.isProcessing && !status.isPending) {
      return left('Payment must be pending or processing to fail');
    }
    return right(copyWith(
      status: PaymentStatus.failed(reason),
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Payment> cancel() {
    if (status.isFinal) {
      return left('Cannot cancel final payment');
    }
    return right(copyWith(
      status: const PaymentStatus.cancelled(),
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Payment> refund({
    required double refundAmount,
    required String reason,
  }) {
    if (!status.isCompleted) {
      return left('Can only refund completed payments');
    }
    if (refundAmount <= 0) {
      return left('Refund amount must be positive');
    }
    if (refundAmount > amount.totalAmount) {
      return left('Refund amount cannot exceed payment amount');
    }
    return right(copyWith(
      status: PaymentStatus.refunded(
        amount: refundAmount,
        reason: reason,
      ),
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Payment> partialRefund({
    required double refundAmount,
    required String reason,
  }) {
    if (!status.isCompleted) {
      return left('Can only refund completed payments');
    }
    if (refundAmount <= 0) {
      return left('Refund amount must be positive');
    }
    if (refundAmount >= amount.totalAmount) {
      return left('Use full refund for complete refund');
    }
    
    final updatedMetadata = {
      ...?metadata,
      'partialRefunds': [
        ...?(metadata?['partialRefunds'] as List? ?? []),
        {
          'amount': refundAmount,
          'reason': reason,
          'date': DateTime.now().toIso8601String(),
        }
      ],
      'totalRefunded': (metadata?['totalRefunded'] as double? ?? 0) + refundAmount,
    };
    
    return right(copyWith(
      metadata: updatedMetadata,
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Payment> retry() {
    if (!status.canRetry) {
      return left('Cannot retry this payment');
    }
    return right(copyWith(
      status: const PaymentStatus.pending(),
      processedAt: null,
      completedAt: null,
      transactionId: null,
      updatedAt: DateTime.now(),
    ));
  }

  double get totalRefunded => metadata?['totalRefunded'] as double? ?? 0;
  double get remainingAmount => amount.totalAmount - totalRefunded;
  bool get hasPartialRefunds => (metadata?['partialRefunds'] as List?)?.isNotEmpty ?? false;
  bool get isFullyRefunded => status.isRefunded || totalRefunded >= amount.totalAmount;
}