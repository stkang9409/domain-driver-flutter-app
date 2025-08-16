// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_payment_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompletePaymentCommand _$CompletePaymentCommandFromJson(
        Map<String, dynamic> json) =>
    _CompletePaymentCommand(
      paymentId: json['paymentId'] as String,
      transactionId: json['transactionId'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CompletePaymentCommandToJson(
        _CompletePaymentCommand instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'transactionId': instance.transactionId,
      'metadata': instance.metadata,
    };
