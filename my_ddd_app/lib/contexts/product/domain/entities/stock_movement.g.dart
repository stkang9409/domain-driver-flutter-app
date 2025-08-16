// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_movement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockMovement _$StockMovementFromJson(Map<String, dynamic> json) =>
    _StockMovement(
      id: Uuid.fromJson(json['id'] as String),
      type: $enumDecode(_$StockMovementTypeEnumMap, json['type']),
      quantity: (json['quantity'] as num).toInt(),
      reason: json['reason'] as String,
      referenceId: json['referenceId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StockMovementToJson(_StockMovement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$StockMovementTypeEnumMap[instance.type]!,
      'quantity': instance.quantity,
      'reason': instance.reason,
      'referenceId': instance.referenceId,
      'createdAt': instance.createdAt.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$StockMovementTypeEnumMap = {
  StockMovementType.initial: 'initial',
  StockMovementType.addition: 'addition',
  StockMovementType.removal: 'removal',
  StockMovementType.reservation: 'reservation',
  StockMovementType.release: 'release',
  StockMovementType.sale: 'sale',
  StockMovementType.adjustment: 'adjustment',
  StockMovementType.return_: 'return_',
};
