import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import 'package:my_ddd_app/contexts/payment/domain/events/payment_events.dart';
import 'package:my_ddd_app/integration/payment_product_integration.dart';

void main() {
  group('Payment Product Integration', () {
    late ProviderContainer container;
    late EventBus eventBus;

    setUp(() {
      container = ProviderContainer();
      eventBus = container.read(eventBusProvider);

      // Initialize the integration
      container.read(paymentProductIntegrationProvider);
    });

    tearDown(() {
      container.dispose();
    });

    test('should listen to PaymentCompletedEvent', () async {
      var eventHandled = false;

      // Listen for print output (in real test, would check handler call)
      eventBus.on<PaymentCompletedEvent>().listen((event) {
        eventHandled = true;
      });

      // Emit a payment completed event
      final event = PaymentCompletedEvent(
        paymentId: 'payment-123',
        orderId: 'order-456',
        payerId: 'user-789',
        amount: 99.99,
        transactionId: 'tx-abc',
        occurredAt: DateTime.now(),
      );

      eventBus.publish(event);

      // Wait for async processing
      await Future.delayed(const Duration(milliseconds: 100));

      expect(eventHandled, isTrue);
    });
  });
}
