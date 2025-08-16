import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_reward_command.freezed.dart';
part 'claim_reward_command.g.dart';

@freezed
abstract class ClaimRewardCommand with _$ClaimRewardCommand {
  const factory ClaimRewardCommand({
    required String userId,
    required double amount,
    required String claimMethod,
    Map<String, dynamic>? metadata,
  }) = _ClaimRewardCommand;

  factory ClaimRewardCommand.fromJson(Map<String, dynamic> json) =>
      _$ClaimRewardCommandFromJson(json);
}