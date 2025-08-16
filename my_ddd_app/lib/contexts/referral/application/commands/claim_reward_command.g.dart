// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_reward_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClaimRewardCommand _$ClaimRewardCommandFromJson(Map<String, dynamic> json) =>
    _ClaimRewardCommand(
      userId: json['userId'] as String,
      amount: (json['amount'] as num).toDouble(),
      claimMethod: json['claimMethod'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ClaimRewardCommandToJson(_ClaimRewardCommand instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'amount': instance.amount,
      'claimMethod': instance.claimMethod,
      'metadata': instance.metadata,
    };
