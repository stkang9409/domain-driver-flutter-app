// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductPrice _$ProductPriceFromJson(Map<String, dynamic> json) =>
    _ProductPrice(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      discountedAmount: (json['discountedAmount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductPriceToJson(_ProductPrice instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'discountedAmount': instance.discountedAmount,
    };
