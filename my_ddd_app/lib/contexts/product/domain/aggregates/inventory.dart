import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../entities/stock_movement.dart';
import '../value_objects/sku.dart';

part 'inventory.freezed.dart';
part 'inventory.g.dart';

@freezed
abstract class Inventory with _$Inventory {
  const Inventory._();

  const factory Inventory({
    required Uuid id,
    required Uuid productId,
    required SKU sku,
    required int quantity,
    required int reservedQuantity,
    required int minimumStock,
    required List<StockMovement> movements,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Inventory;

  factory Inventory.fromJson(Map<String, dynamic> json) =>
      _$InventoryFromJson(json);

  factory Inventory.create({
    required Uuid productId,
    required SKU sku,
    required int initialQuantity,
    int minimumStock = 0,
  }) {
    final movement = StockMovement.create(
      type: StockMovementType.initial,
      quantity: initialQuantity,
      reason: 'Initial stock',
    );

    return Inventory(
      id: Uuid.generate(),
      productId: productId,
      sku: sku,
      quantity: initialQuantity,
      reservedQuantity: 0,
      minimumStock: minimumStock,
      movements: [movement],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  int get availableQuantity => quantity - reservedQuantity;
  bool get isLowStock => availableQuantity <= minimumStock;
  bool get isOutOfStock => availableQuantity <= 0;

  Either<String, Inventory> addStock(int amount, String reason) {
    if (amount <= 0) {
      return left('Amount must be positive');
    }

    final movement = StockMovement.create(
      type: StockMovementType.addition,
      quantity: amount,
      reason: reason,
    );

    return right(copyWith(
      quantity: quantity + amount,
      movements: [...movements, movement],
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Inventory> removeStock(int amount, String reason) {
    if (amount <= 0) {
      return left('Amount must be positive');
    }
    if (amount > availableQuantity) {
      return left('Insufficient available stock');
    }

    final movement = StockMovement.create(
      type: StockMovementType.removal,
      quantity: amount,
      reason: reason,
    );

    return right(copyWith(
      quantity: quantity - amount,
      movements: [...movements, movement],
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Inventory> reserveStock(int amount, String orderId) {
    if (amount <= 0) {
      return left('Amount must be positive');
    }
    if (amount > availableQuantity) {
      return left('Insufficient available stock to reserve');
    }

    final movement = StockMovement.create(
      type: StockMovementType.reservation,
      quantity: amount,
      reason: 'Reserved for order: $orderId',
      referenceId: orderId,
    );

    return right(copyWith(
      reservedQuantity: reservedQuantity + amount,
      movements: [...movements, movement],
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Inventory> releaseReservation(int amount, String orderId) {
    if (amount <= 0) {
      return left('Amount must be positive');
    }
    if (amount > reservedQuantity) {
      return left('Cannot release more than reserved');
    }

    final movement = StockMovement.create(
      type: StockMovementType.release,
      quantity: amount,
      reason: 'Released reservation for order: $orderId',
      referenceId: orderId,
    );

    return right(copyWith(
      reservedQuantity: reservedQuantity - amount,
      movements: [...movements, movement],
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Inventory> confirmReservation(int amount, String orderId) {
    if (amount <= 0) {
      return left('Amount must be positive');
    }
    if (amount > reservedQuantity) {
      return left('Cannot confirm more than reserved');
    }

    final movement = StockMovement.create(
      type: StockMovementType.sale,
      quantity: amount,
      reason: 'Sold - Order: $orderId',
      referenceId: orderId,
    );

    return right(copyWith(
      quantity: quantity - amount,
      reservedQuantity: reservedQuantity - amount,
      movements: [...movements, movement],
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Inventory> adjustStock(int newQuantity, String reason) {
    final difference = newQuantity - quantity;
    final movement = StockMovement.create(
      type: StockMovementType.adjustment,
      quantity: difference.abs(),
      reason: reason,
    );

    return right(copyWith(
      quantity: newQuantity,
      movements: [...movements, movement],
      updatedAt: DateTime.now(),
    ));
  }

  List<StockMovement> getMovementHistory({
    DateTime? from,
    DateTime? to,
    StockMovementType? type,
  }) {
    return movements.where((m) {
      if (from != null && m.createdAt.isBefore(from)) return false;
      if (to != null && m.createdAt.isAfter(to)) return false;
      if (type != null && m.type != type) return false;
      return true;
    }).toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }
}