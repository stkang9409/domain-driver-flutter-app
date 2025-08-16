import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import '../../domain/aggregates/payment.dart';
import '../../domain/repositories/payment_repository.dart';
import '../commands/process_payment_command.dart';
import 'create_payment_handler.dart';

part 'process_payment_handler.g.dart';

class ProcessPaymentHandler {
  final PaymentRepository _repository;
  final EventBus _eventBus;

  ProcessPaymentHandler({
    required PaymentRepository repository,
    required EventBus eventBus,
  })  : _repository = repository,
        _eventBus = eventBus;

  Future<Either<String, PaymentAggregate>> execute(ProcessPaymentCommand command) async {
    try {
      // Find payment
      final paymentResult = await _repository.findById(Uuid.fromString(command.paymentId));
      
      return await paymentResult.fold(
        (error) => Future.value(left('Payment not found: $error')),
        (paymentAggregate) async {
          // Process the payment
          final processResult = paymentAggregate.payment.startProcessing(command.paymentMethodType);
          
          return await processResult.fold(
            (error) => Future.value(left(error)),
            (processedAggregate) async {
              // Save updated payment
              final saveResult = await _repository.save(processedAggregate);
              
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
            },
          );
        },
      );
    } catch (e) {
      return left('Failed to process payment: ${e.toString()}');
    }
  }
}

@riverpod
ProcessPaymentHandler processPaymentHandler(ref) {
  return ProcessPaymentHandler(
    repository: ref.watch(paymentRepositoryProvider),
    eventBus: ref.watch(eventBusProvider),
  );
}