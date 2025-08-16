import 'package:freezed_annotation/freezed_annotation.dart';

part 'process_payment_command.freezed.dart';
part 'process_payment_command.g.dart';

@freezed
abstract class ProcessPaymentCommand with _$ProcessPaymentCommand {
  const factory ProcessPaymentCommand({
    required String paymentId,
    required String paymentMethodType,
    Map<String, dynamic>? metadata,
  }) = _ProcessPaymentCommand;

  factory ProcessPaymentCommand.fromJson(Map<String, dynamic> json) =>
      _$ProcessPaymentCommandFromJson(json);
}