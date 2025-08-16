import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_referral_link_command.freezed.dart';
part 'create_referral_link_command.g.dart';

@freezed
abstract class CreateReferralLinkCommand with _$CreateReferralLinkCommand {
  const factory CreateReferralLinkCommand({
    required String referrerId,
    required String programId,
    String? customCode,
    DateTime? expiresAt,
  }) = _CreateReferralLinkCommand;

  factory CreateReferralLinkCommand.fromJson(Map<String, dynamic> json) =>
      _$CreateReferralLinkCommandFromJson(json);
}