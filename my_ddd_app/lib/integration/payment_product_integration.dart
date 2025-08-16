// lib/integration/payment_product_integration.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import 'package:my_ddd_app/contexts/payment/domain/events/payment_events.dart';
import 'package:my_ddd_app/contexts/product/application/commands/deliver_product_command.dart';
import 'package:my_ddd_app/contexts/product/application/handlers/deliver_product_handler.dart';

part 'payment_product_integration.g.dart';

/// Integration between Payment and Product contexts
/// Listens to PaymentCompletedEvent and triggers DeliverProductHandler
@Riverpod(keepAlive: true)
void paymentProductIntegration(Ref ref) {
  final eventBus = ref.watch(eventBusProvider);
  final deliverProductHandler = ref.watch(deliverProductHandlerProvider);
  
  // Subscribe to PaymentCompletedEvent
  eventBus.on<PaymentCompletedEvent>().listen((event) async {
    print('[Integration] Payment completed - Order: ${event.orderId}');
    
    // Note: In a real implementation, we would:
    // 1. Fetch order details from Order/Payment context
    // 2. Get list of products from the order
    // 3. Call handler for each product
    
    // Example: Deliver a single product (mock)
    final command = DeliverProductCommand(
      orderId: event.orderId,
      productId: 'product-001', // Would come from order details
      recipientId: event.payerId,
      quantity: 1,
      reason: DeliveryReason.purchase,
      metadata: {
        'paymentId': event.aggregateId,
        'transactionId': event.transactionId,
        'amount': event.amount,
      },
    );
    
    // Call the handler
    final result = await deliverProductHandler.execute(command);
    
    result.fold(
      (error) => print('[Integration] Failed to deliver product: $error'),
      (delivery) => print('[Integration] Product delivery created: ${delivery.id.value}'),
    );
  });
}