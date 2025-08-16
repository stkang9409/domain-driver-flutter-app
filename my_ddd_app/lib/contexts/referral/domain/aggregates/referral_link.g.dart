// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferralLink _$ReferralLinkFromJson(Map<String, dynamic> json) =>
    _ReferralLink(
      id: Uuid.fromJson(json['id'] as String),
      referrerId: Uuid.fromJson(json['referrerId'] as String),
      programId: Uuid.fromJson(json['programId'] as String),
      code: ReferralCode.fromJson(json['code'] as Map<String, dynamic>),
      shareableUrl: json['shareableUrl'] as String,
      clickCount: (json['clickCount'] as num).toInt(),
      relationships: (json['relationships'] as List<dynamic>)
          .map((e) => ReferralRelationship.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$ReferralLinkToJson(_ReferralLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referrerId': instance.referrerId,
      'programId': instance.programId,
      'code': instance.code,
      'shareableUrl': instance.shareableUrl,
      'clickCount': instance.clickCount,
      'relationships': instance.relationships,
      'metadata': instance.metadata,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };
