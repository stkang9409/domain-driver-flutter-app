// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Inventory _$InventoryFromJson(Map<String, dynamic> json) => _Inventory(
      id: Uuid.fromJson(json['id'] as String),
      productId: Uuid.fromJson(json['productId'] as String),
      sku: SKU.fromJson(json['sku'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      reservedQuantity: (json['reservedQuantity'] as num).toInt(),
      minimumStock: (json['minimumStock'] as num).toInt(),
      movements: (json['movements'] as List<dynamic>)
          .map((e) => StockMovement.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$InventoryToJson(_Inventory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'sku': instance.sku,
      'quantity': instance.quantity,
      'reservedQuantity': instance.reservedQuantity,
      'minimumStock': instance.minimumStock,
      'movements': instance.movements,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
