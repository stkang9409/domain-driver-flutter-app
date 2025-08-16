// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliver_product_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliverProductCommand _$DeliverProductCommandFromJson(
        Map<String, dynamic> json) =>
    _DeliverProductCommand(
      orderId: json['orderId'] as String,
      productId: json['productId'] as String,
      recipientId: json['recipientId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      reason: $enumDecode(_$DeliveryReasonEnumMap, json['reason']),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$DeliverProductCommandToJson(
        _DeliverProductCommand instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'productId': instance.productId,
      'recipientId': instance.recipientId,
      'quantity': instance.quantity,
      'reason': _$DeliveryReasonEnumMap[instance.reason]!,
      'metadata': instance.metadata,
    };

const _$DeliveryReasonEnumMap = {
  DeliveryReason.purchase: 'purchase',
  DeliveryReason.reward: 'reward',
  DeliveryReason.gift: 'gift',
  DeliveryReason.promotion: 'promotion',
  DeliveryReason.replacement: 'replacement',
};
