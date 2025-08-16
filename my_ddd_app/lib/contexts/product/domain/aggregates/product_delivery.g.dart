// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDelivery _$ProductDeliveryFromJson(Map<String, dynamic> json) =>
    _ProductDelivery(
      id: Uuid.fromJson(json['id'] as String),
      orderId: Uuid.fromJson(json['orderId'] as String),
      productId: Uuid.fromJson(json['productId'] as String),
      recipientId: Uuid.fromJson(json['recipientId'] as String),
      type: $enumDecode(_$DeliveryTypeEnumMap, json['type']),
      status: $enumDecode(_$DeliveryStatusEnumMap, json['status']),
      deliveryDetails: json['deliveryDetails'] as Map<String, dynamic>,
      trackingNumber: json['trackingNumber'] as String?,
      shippedAt: json['shippedAt'] == null
          ? null
          : DateTime.parse(json['shippedAt'] as String),
      deliveredAt: json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String),
      deliveryProof: json['deliveryProof'] as String?,
      failureReason: json['failureReason'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ProductDeliveryToJson(_ProductDelivery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'productId': instance.productId,
      'recipientId': instance.recipientId,
      'type': _$DeliveryTypeEnumMap[instance.type]!,
      'status': _$DeliveryStatusEnumMap[instance.status]!,
      'deliveryDetails': instance.deliveryDetails,
      'trackingNumber': instance.trackingNumber,
      'shippedAt': instance.shippedAt?.toIso8601String(),
      'deliveredAt': instance.deliveredAt?.toIso8601String(),
      'deliveryProof': instance.deliveryProof,
      'failureReason': instance.failureReason,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$DeliveryTypeEnumMap = {
  DeliveryType.physical: 'physical',
  DeliveryType.digital: 'digital',
  DeliveryType.voucher: 'voucher',
  DeliveryType.service: 'service',
};

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.pending: 'pending',
  DeliveryStatus.processing: 'processing',
  DeliveryStatus.shipped: 'shipped',
  DeliveryStatus.delivered: 'delivered',
  DeliveryStatus.cancelled: 'cancelled',
  DeliveryStatus.failed: 'failed',
};
