// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_payment_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProcessPaymentCommand _$ProcessPaymentCommandFromJson(
        Map<String, dynamic> json) =>
    _ProcessPaymentCommand(
      paymentId: json['paymentId'] as String,
      paymentMethodType: json['paymentMethodType'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ProcessPaymentCommandToJson(
        _ProcessPaymentCommand instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'paymentMethodType': instance.paymentMethodType,
      'metadata': instance.metadata,
    };
