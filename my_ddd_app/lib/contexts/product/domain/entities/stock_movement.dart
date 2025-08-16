import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

part 'stock_movement.freezed.dart';
part 'stock_movement.g.dart';

enum StockMovementType {
  initial,
  addition,
  removal,
  reservation,
  release,
  sale,
  adjustment,
  return_,
}

@freezed
abstract class StockMovement with _$StockMovement {
  const StockMovement._();

  const factory StockMovement({
    required Uuid id,
    required StockMovementType type,
    required int quantity,
    required String reason,
    String? referenceId,
    required DateTime createdAt,
    Map<String, dynamic>? metadata,
  }) = _StockMovement;

  factory StockMovement.fromJson(Map<String, dynamic> json) =>
      _$StockMovementFromJson(json);

  factory StockMovement.create({
    required StockMovementType type,
    required int quantity,
    required String reason,
    String? referenceId,
    Map<String, dynamic>? metadata,
  }) {
    return StockMovement(
      id: Uuid.generate(),
      type: type,
      quantity: quantity,
      reason: reason,
      referenceId: referenceId,
      createdAt: DateTime.now(),
      metadata: metadata,
    );
  }

  bool get isAddition => type == StockMovementType.addition || 
                         type == StockMovementType.initial ||
                         type == StockMovementType.return_;
  
  bool get isReduction => type == StockMovementType.removal || 
                          type == StockMovementType.sale;
  
  bool get isReservation => type == StockMovementType.reservation;
  bool get isRelease => type == StockMovementType.release;
  bool get isAdjustment => type == StockMovementType.adjustment;

  String get displayDescription {
    final sign = isAddition ? '+' : isReduction ? '-' : '';
    return '$sign$quantity - $reason';
  }

  String get typeDisplayName {
    switch (type) {
      case StockMovementType.initial:
        return 'Initial Stock';
      case StockMovementType.addition:
        return 'Stock Added';
      case StockMovementType.removal:
        return 'Stock Removed';
      case StockMovementType.reservation:
        return 'Reserved';
      case StockMovementType.release:
        return 'Reservation Released';
      case StockMovementType.sale:
        return 'Sold';
      case StockMovementType.adjustment:
        return 'Adjustment';
      case StockMovementType.return_:
        return 'Return';
    }
  }
}