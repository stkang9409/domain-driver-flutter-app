// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePaymentCommand _$CreatePaymentCommandFromJson(
        Map<String, dynamic> json) =>
    _CreatePaymentCommand(
      orderId: json['orderId'] as String,
      payerId: json['payerId'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      paymentMethodId: json['paymentMethodId'] as String,
    );

Map<String, dynamic> _$CreatePaymentCommandToJson(
        _CreatePaymentCommand instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'payerId': instance.payerId,
      'amount': instance.amount,
      'currency': instance.currency,
      'paymentMethodId': instance.paymentMethodId,
    };
