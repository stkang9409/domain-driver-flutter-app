// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PendingPaymentStatus _$PendingPaymentStatusFromJson(
        Map<String, dynamic> json) =>
    PendingPaymentStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PendingPaymentStatusToJson(
        PendingPaymentStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

ProcessingPaymentStatus _$ProcessingPaymentStatusFromJson(
        Map<String, dynamic> json) =>
    ProcessingPaymentStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ProcessingPaymentStatusToJson(
        ProcessingPaymentStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

CompletedPaymentStatus _$CompletedPaymentStatusFromJson(
        Map<String, dynamic> json) =>
    CompletedPaymentStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CompletedPaymentStatusToJson(
        CompletedPaymentStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

FailedPaymentStatus _$FailedPaymentStatusFromJson(Map<String, dynamic> json) =>
    FailedPaymentStatus(
      json['reason'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$FailedPaymentStatusToJson(
        FailedPaymentStatus instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'runtimeType': instance.$type,
    };

RefundedPaymentStatus _$RefundedPaymentStatusFromJson(
        Map<String, dynamic> json) =>
    RefundedPaymentStatus(
      amount: (json['amount'] as num).toDouble(),
      reason: json['reason'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$RefundedPaymentStatusToJson(
        RefundedPaymentStatus instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'reason': instance.reason,
      'runtimeType': instance.$type,
    };

CancelledPaymentStatus _$CancelledPaymentStatusFromJson(
        Map<String, dynamic> json) =>
    CancelledPaymentStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CancelledPaymentStatusToJson(
        CancelledPaymentStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
