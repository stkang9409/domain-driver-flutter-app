// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardTransaction _$RewardTransactionFromJson(Map<String, dynamic> json) =>
    _RewardTransaction(
      id: Uuid.fromJson(json['id'] as String),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      amount: RewardAmount.fromJson(json['amount'] as Map<String, dynamic>),
      referenceId: json['referenceId'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$RewardTransactionToJson(_RewardTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'amount': instance.amount,
      'referenceId': instance.referenceId,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'metadata': instance.metadata,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.earned: 'earned',
  TransactionType.claimed: 'claimed',
  TransactionType.expired: 'expired',
  TransactionType.reversed: 'reversed',
};
