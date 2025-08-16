// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentAmount _$PaymentAmountFromJson(Map<String, dynamic> json) =>
    _PaymentAmount(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      tax: (json['tax'] as num?)?.toDouble(),
      fee: (json['fee'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PaymentAmountToJson(_PaymentAmount instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'tax': instance.tax,
      'fee': instance.fee,
    };
