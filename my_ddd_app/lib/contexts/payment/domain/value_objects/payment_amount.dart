import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_amount.freezed.dart';
part 'payment_amount.g.dart';

@freezed
abstract class PaymentAmount with _$PaymentAmount {
  const PaymentAmount._();

  const factory PaymentAmount({
    required double amount,
    required String currency,
    double? tax,
    double? fee,
  }) = _PaymentAmount;

  factory PaymentAmount.fromJson(Map<String, dynamic> json) =>
      _$PaymentAmountFromJson(json);

  factory PaymentAmount.zero([String currency = 'USD']) {
    return PaymentAmount(amount: 0, currency: currency);
  }

  double get totalAmount => amount + (tax ?? 0) + (fee ?? 0);
  
  double get netAmount => amount;

  PaymentAmount addTax(double taxAmount) {
    return copyWith(tax: (tax ?? 0) + taxAmount);
  }

  PaymentAmount addFee(double feeAmount) {
    return copyWith(fee: (fee ?? 0) + feeAmount);
  }

  bool isValidForPayment() {
    return amount > 0 && totalAmount > 0;
  }

  String get displayAmount {
    if (currency == 'USD') {
      return '\$${totalAmount.toStringAsFixed(2)}';
    }
    return '${totalAmount.toStringAsFixed(2)} $currency';
  }

  String get breakdown {
    final lines = <String>[];
    lines.add('Amount: ${amount.toStringAsFixed(2)} $currency');
    if (tax != null && tax! > 0) {
      lines.add('Tax: ${tax!.toStringAsFixed(2)} $currency');
    }
    if (fee != null && fee! > 0) {
      lines.add('Fee: ${fee!.toStringAsFixed(2)} $currency');
    }
    lines.add('Total: ${totalAmount.toStringAsFixed(2)} $currency');
    return lines.join('\n');
  }
}