// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_referral_link_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateReferralLinkCommand _$CreateReferralLinkCommandFromJson(
        Map<String, dynamic> json) =>
    _CreateReferralLinkCommand(
      referrerId: json['referrerId'] as String,
      programId: json['programId'] as String,
      customCode: json['customCode'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$CreateReferralLinkCommandToJson(
        _CreateReferralLinkCommand instance) =>
    <String, dynamic>{
      'referrerId': instance.referrerId,
      'programId': instance.programId,
      'customCode': instance.customCode,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };
