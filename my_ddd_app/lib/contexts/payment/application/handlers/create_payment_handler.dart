import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import '../../domain/aggregates/payment.dart';
import '../../domain/entities/payment_method.dart';
import '../../domain/value_objects/payment_amount.dart';
import '../../domain/repositories/payment_repository.dart';
import '../../infrastructure/repositories/in_memory_payment_repository.dart';
import '../commands/create_payment_command.dart';

part 'create_payment_handler.g.dart';

class CreatePaymentHandler {
  final PaymentRepository _repository;
  final EventBus _eventBus;

  CreatePaymentHandler({
    required PaymentRepository repository,
    required EventBus eventBus,
  })  : _repository = repository,
        _eventBus = eventBus;

  Future<Either<String, PaymentAggregate>> execute(CreatePaymentCommand command) async {
    try {
      // Create payment method (mock for now)
      final paymentMethod = PaymentMethod(
        id: Uuid.fromString(command.paymentMethodId),
        type: PaymentMethodType.creditCard,
        displayName: 'Mock Payment Method',
        details: {},
        isDefault: false,
        isActive: true,
        createdAt: DateTime.now(),
      );
      
      // Create payment aggregate
      final paymentAggregate = Payment.create(
        orderId: Uuid.fromString(command.orderId),
        payerId: Uuid.fromString(command.payerId),
        amount: PaymentAmount(
          amount: command.amount,
          currency: command.currency,
        ),
        paymentMethod: paymentMethod,
        description: 'Payment for order ${command.orderId}',
      );

      // Save to repository
      final saveResult = await _repository.save(paymentAggregate);
      
      return saveResult.fold(
        (error) => left('Failed to save payment: $error'),
        (savedPayment) {
          // Publish domain events
          for (final event in savedPayment.domainEvents) {
            _eventBus.publish(event);
          }
          savedPayment.clearEvents();
          return right(savedPayment);
        },
      );
    } catch (e) {
      return left('Failed to create payment: ${e.toString()}');
    }
  }
}

@riverpod
PaymentRepository paymentRepository(ref) {
  return InMemoryPaymentRepository();
}

@riverpod
CreatePaymentHandler createPaymentHandler(ref) {
  return CreatePaymentHandler(
    repository: ref.watch(paymentRepositoryProvider),
    eventBus: ref.watch(eventBusProvider),
  );
}