// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardPolicy _$RewardPolicyFromJson(Map<String, dynamic> json) =>
    _RewardPolicy(
      id: json['id'] as String,
      type: $enumDecode(_$RewardTypeEnumMap, json['type']),
      referrerReward:
          RewardAmount.fromJson(json['referrerReward'] as Map<String, dynamic>),
      refereeReward:
          RewardAmount.fromJson(json['refereeReward'] as Map<String, dynamic>),
      condition:
          RewardCondition.fromJson(json['condition'] as Map<String, dynamic>),
      validityDays: (json['validityDays'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$RewardPolicyToJson(_RewardPolicy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$RewardTypeEnumMap[instance.type]!,
      'referrerReward': instance.referrerReward,
      'refereeReward': instance.refereeReward,
      'condition': instance.condition,
      'validityDays': instance.validityDays,
      'metadata': instance.metadata,
    };

const _$RewardTypeEnumMap = {
  RewardType.points: 'points',
  RewardType.cash: 'cash',
  RewardType.discount: 'discount',
  RewardType.gift: 'gift',
};

ImmediateCondition _$ImmediateConditionFromJson(Map<String, dynamic> json) =>
    ImmediateCondition(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ImmediateConditionToJson(ImmediateCondition instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

AfterPurchaseCondition _$AfterPurchaseConditionFromJson(
        Map<String, dynamic> json) =>
    AfterPurchaseCondition(
      (json['minAmount'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AfterPurchaseConditionToJson(
        AfterPurchaseCondition instance) =>
    <String, dynamic>{
      'minAmount': instance.minAmount,
      'runtimeType': instance.$type,
    };

AfterSignupCondition _$AfterSignupConditionFromJson(
        Map<String, dynamic> json) =>
    AfterSignupCondition(
      (json['daysAfter'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AfterSignupConditionToJson(
        AfterSignupCondition instance) =>
    <String, dynamic>{
      'daysAfter': instance.daysAfter,
      'runtimeType': instance.$type,
    };
