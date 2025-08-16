// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardAmount _$RewardAmountFromJson(Map<String, dynamic> json) =>
    _RewardAmount(
      value: (json['value'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$RewardAmountToJson(_RewardAmount instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
    };
