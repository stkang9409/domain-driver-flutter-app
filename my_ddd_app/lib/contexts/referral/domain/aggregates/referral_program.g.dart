// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferralProgram _$ReferralProgramFromJson(Map<String, dynamic> json) =>
    _ReferralProgram(
      id: Uuid.fromJson(json['id'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      defaultRewardPolicy: RewardPolicy.fromJson(
          json['defaultRewardPolicy'] as Map<String, dynamic>),
      rewardTiers: (json['rewardTiers'] as List<dynamic>)
          .map((e) => RewardTier.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ReferralProgramToJson(_ReferralProgram instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isActive': instance.isActive,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'defaultRewardPolicy': instance.defaultRewardPolicy,
      'rewardTiers': instance.rewardTiers,
      'metadata': instance.metadata,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
