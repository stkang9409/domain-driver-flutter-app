// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Payment _$PaymentFromJson(Map<String, dynamic> json) => _Payment(
      id: Uuid.fromJson(json['id'] as String),
      orderId: Uuid.fromJson(json['orderId'] as String),
      payerId: Uuid.fromJson(json['payerId'] as String),
      amount: PaymentAmount.fromJson(json['amount'] as Map<String, dynamic>),
      paymentMethod:
          PaymentMethod.fromJson(json['paymentMethod'] as Map<String, dynamic>),
      status: PaymentStatus.fromJson(json['status'] as Map<String, dynamic>),
      description: json['description'] as String,
      transactionId: json['transactionId'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      processedAt: json['processedAt'] == null
          ? null
          : DateTime.parse(json['processedAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PaymentToJson(_Payment instance) => <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'payerId': instance.payerId,
      'amount': instance.amount,
      'paymentMethod': instance.paymentMethod,
      'status': instance.status,
      'description': instance.description,
      'transactionId': instance.transactionId,
      'metadata': instance.metadata,
      'processedAt': instance.processedAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
