import 'package:my_ddd_app/shared/domain/events/domain_event.dart';

class ProductCreatedEvent extends DomainEvent {
  final String productName;
  final double price;

  ProductCreatedEvent({
    required String productId,
    required this.productName,
    required this.price,
    DateTime? occurredAt,
  }) : super(aggregateId: productId, occurredAt: occurredAt);
}

class ProductPriceChangedEvent extends DomainEvent {
  final double oldPrice;
  final double newPrice;

  ProductPriceChangedEvent({
    required String productId,
    required this.oldPrice,
    required this.newPrice,
    DateTime? occurredAt,
  }) : super(aggregateId: productId, occurredAt: occurredAt);
}

class StockReservedEvent extends DomainEvent {
  final int quantity;
  final String orderId;

  StockReservedEvent({
    required String inventoryId,
    required this.quantity,
    required this.orderId,
    DateTime? occurredAt,
  }) : super(aggregateId: inventoryId, occurredAt: occurredAt);
}

class StockDepletedEvent extends DomainEvent {
  final String productId;
  final String sku;

  StockDepletedEvent({
    required String inventoryId,
    required this.productId,
    required this.sku,
    DateTime? occurredAt,
  }) : super(aggregateId: inventoryId, occurredAt: occurredAt);
}

class ProductDeliveredEvent extends DomainEvent {
  final String orderId;
  final String productId;
  final String recipientId;
  final String deliveryType;

  ProductDeliveredEvent({
    required String deliveryId,
    required this.orderId,
    required this.productId,
    required this.recipientId,
    required this.deliveryType,
    DateTime? occurredAt,
  }) : super(aggregateId: deliveryId, occurredAt: occurredAt);
}