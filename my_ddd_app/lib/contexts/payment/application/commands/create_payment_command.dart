import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_payment_command.freezed.dart';
part 'create_payment_command.g.dart';

@freezed
abstract class CreatePaymentCommand with _$CreatePaymentCommand {
  const factory CreatePaymentCommand({
    required String orderId,
    required String payerId,
    required double amount,
    required String currency,
    required String paymentMethodId,
  }) = _CreatePaymentCommand;

  factory CreatePaymentCommand.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentCommandFromJson(json);
}