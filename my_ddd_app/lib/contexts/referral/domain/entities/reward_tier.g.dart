// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_tier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardTier _$RewardTierFromJson(Map<String, dynamic> json) => _RewardTier(
      id: json['id'] as String,
      name: json['name'] as String,
      minReferrals: (json['minReferrals'] as num).toInt(),
      multiplier: (json['multiplier'] as num).toDouble(),
      bonusAmount:
          RewardAmount.fromJson(json['bonusAmount'] as Map<String, dynamic>),
      benefits: json['benefits'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$RewardTierToJson(_RewardTier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'minReferrals': instance.minReferrals,
      'multiplier': instance.multiplier,
      'bonusAmount': instance.bonusAmount,
      'benefits': instance.benefits,
      'createdAt': instance.createdAt.toIso8601String(),
    };
