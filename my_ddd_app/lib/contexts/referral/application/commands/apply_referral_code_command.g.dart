// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_referral_code_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApplyReferralCodeCommand _$ApplyReferralCodeCommandFromJson(
        Map<String, dynamic> json) =>
    _ApplyReferralCodeCommand(
      refereeId: json['refereeId'] as String,
      refereeName: json['refereeName'] as String,
      referralCode: json['referralCode'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ApplyReferralCodeCommandToJson(
        _ApplyReferralCodeCommand instance) =>
    <String, dynamic>{
      'refereeId': instance.refereeId,
      'refereeName': instance.refereeName,
      'referralCode': instance.referralCode,
      'metadata': instance.metadata,
    };
