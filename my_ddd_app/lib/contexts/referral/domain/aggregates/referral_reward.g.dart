// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferralReward _$ReferralRewardFromJson(Map<String, dynamic> json) =>
    _ReferralReward(
      id: Uuid.fromJson(json['id'] as String),
      userId: Uuid.fromJson(json['userId'] as String),
      totalEarned:
          RewardAmount.fromJson(json['totalEarned'] as Map<String, dynamic>),
      totalClaimed:
          RewardAmount.fromJson(json['totalClaimed'] as Map<String, dynamic>),
      pendingAmount:
          RewardAmount.fromJson(json['pendingAmount'] as Map<String, dynamic>),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => RewardTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ReferralRewardToJson(_ReferralReward instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'totalEarned': instance.totalEarned,
      'totalClaimed': instance.totalClaimed,
      'pendingAmount': instance.pendingAmount,
      'transactions': instance.transactions,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
