// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_referral_statistics_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetReferralStatisticsQuery _$GetReferralStatisticsQueryFromJson(
        Map<String, dynamic> json) =>
    _GetReferralStatisticsQuery(
      userId: json['userId'] as String,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
    );

Map<String, dynamic> _$GetReferralStatisticsQueryToJson(
        _GetReferralStatisticsQuery instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
    };
