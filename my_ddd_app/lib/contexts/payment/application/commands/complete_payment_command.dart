import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_payment_command.freezed.dart';
part 'complete_payment_command.g.dart';

@freezed
abstract class CompletePaymentCommand with _$CompletePaymentCommand {
  const factory CompletePaymentCommand({
    required String paymentId,
    required String transactionId,
    Map<String, dynamic>? metadata,
  }) = _CompletePaymentCommand;

  factory CompletePaymentCommand.fromJson(Map<String, dynamic> json) =>
      _$CompletePaymentCommandFromJson(json);
}