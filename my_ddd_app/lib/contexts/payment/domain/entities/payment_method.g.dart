// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    _PaymentMethod(
      id: Uuid.fromJson(json['id'] as String),
      type: $enumDecode(_$PaymentMethodTypeEnumMap, json['type']),
      displayName: json['displayName'] as String,
      details: json['details'] as Map<String, dynamic>,
      isDefault: json['isDefault'] as bool,
      isActive: json['isActive'] as bool,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$PaymentMethodToJson(_PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$PaymentMethodTypeEnumMap[instance.type]!,
      'displayName': instance.displayName,
      'details': instance.details,
      'isDefault': instance.isDefault,
      'isActive': instance.isActive,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.creditCard: 'creditCard',
  PaymentMethodType.debitCard: 'debitCard',
  PaymentMethodType.paypal: 'paypal',
  PaymentMethodType.bankTransfer: 'bankTransfer',
  PaymentMethodType.digitalWallet: 'digitalWallet',
  PaymentMethodType.cryptocurrency: 'cryptocurrency',
  PaymentMethodType.voucher: 'voucher',
};
