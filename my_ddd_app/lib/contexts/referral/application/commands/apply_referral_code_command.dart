import 'package:freezed_annotation/freezed_annotation.dart';

part 'apply_referral_code_command.freezed.dart';
part 'apply_referral_code_command.g.dart';

@freezed
abstract class ApplyReferralCodeCommand with _$ApplyReferralCodeCommand {
  const factory ApplyReferralCodeCommand({
    required String refereeId,
    required String refereeName,
    required String referralCode,
    Map<String, dynamic>? metadata,
  }) = _ApplyReferralCodeCommand;

  factory ApplyReferralCodeCommand.fromJson(Map<String, dynamic> json) =>
      _$ApplyReferralCodeCommandFromJson(json);
}