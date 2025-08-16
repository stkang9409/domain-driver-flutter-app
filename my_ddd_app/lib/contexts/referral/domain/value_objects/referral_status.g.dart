// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PendingStatus _$PendingStatusFromJson(Map<String, dynamic> json) =>
    PendingStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PendingStatusToJson(PendingStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

CompletedStatus _$CompletedStatusFromJson(Map<String, dynamic> json) =>
    CompletedStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CompletedStatusToJson(CompletedStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

RejectedStatus _$RejectedStatusFromJson(Map<String, dynamic> json) =>
    RejectedStatus(
      json['reason'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$RejectedStatusToJson(RejectedStatus instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'runtimeType': instance.$type,
    };

ExpiredStatus _$ExpiredStatusFromJson(Map<String, dynamic> json) =>
    ExpiredStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ExpiredStatusToJson(ExpiredStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
