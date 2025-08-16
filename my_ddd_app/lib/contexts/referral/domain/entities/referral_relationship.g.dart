// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferralRelationship _$ReferralRelationshipFromJson(
        Map<String, dynamic> json) =>
    _ReferralRelationship(
      id: Uuid.fromJson(json['id'] as String),
      referrerId: Uuid.fromJson(json['referrerId'] as String),
      refereeId: Uuid.fromJson(json['refereeId'] as String),
      refereeName: json['refereeName'] as String,
      referralLinkId: Uuid.fromJson(json['referralLinkId'] as String),
      status: ReferralStatus.fromJson(json['status'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ReferralRelationshipToJson(
        _ReferralRelationship instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referrerId': instance.referrerId,
      'refereeId': instance.refereeId,
      'refereeName': instance.refereeName,
      'referralLinkId': instance.referralLinkId,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'metadata': instance.metadata,
    };
