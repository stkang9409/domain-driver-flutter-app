import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

part 'payment_method.freezed.dart';
part 'payment_method.g.dart';

enum PaymentMethodType {
  creditCard,
  debitCard,
  paypal,
  bankTransfer,
  digitalWallet,
  cryptocurrency,
  voucher,
}

@freezed
abstract class PaymentMethod with _$PaymentMethod {
  const PaymentMethod._();

  const factory PaymentMethod({
    required Uuid id,
    required PaymentMethodType type,
    required String displayName,
    required Map<String, dynamic> details,
    required bool isDefault,
    required bool isActive,
    DateTime? expiresAt,
    required DateTime createdAt,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);

  factory PaymentMethod.createCreditCard({
    required String cardNumber,
    required String cardHolderName,
    required String expiryMonth,
    required String expiryYear,
    bool isDefault = false,
  }) {
    final last4Digits = cardNumber.substring(cardNumber.length - 4);
    return PaymentMethod(
      id: Uuid.generate(),
      type: PaymentMethodType.creditCard,
      displayName: '**** $last4Digits',
      details: {
        'last4': last4Digits,
        'cardHolderName': cardHolderName,
        'expiryMonth': expiryMonth,
        'expiryYear': expiryYear,
        'brand': _detectCardBrand(cardNumber),
      },
      isDefault: isDefault,
      isActive: true,
      expiresAt: DateTime(int.parse('20$expiryYear'), int.parse(expiryMonth)).add(
        const Duration(days: 30),
      ),
      createdAt: DateTime.now(),
    );
  }

  factory PaymentMethod.createPayPal({
    required String email,
    bool isDefault = false,
  }) {
    return PaymentMethod(
      id: Uuid.generate(),
      type: PaymentMethodType.paypal,
      displayName: email,
      details: {
        'email': email,
      },
      isDefault: isDefault,
      isActive: true,
      createdAt: DateTime.now(),
    );
  }

  factory PaymentMethod.createBankTransfer({
    required String bankName,
    required String accountNumber,
    required String accountHolderName,
    bool isDefault = false,
  }) {
    final last4Digits = accountNumber.substring(accountNumber.length - 4);
    return PaymentMethod(
      id: Uuid.generate(),
      type: PaymentMethodType.bankTransfer,
      displayName: '$bankName ****$last4Digits',
      details: {
        'bankName': bankName,
        'last4': last4Digits,
        'accountHolderName': accountHolderName,
      },
      isDefault: isDefault,
      isActive: true,
      createdAt: DateTime.now(),
    );
  }

  factory PaymentMethod.createDigitalWallet({
    required String walletType,
    required String identifier,
    bool isDefault = false,
  }) {
    return PaymentMethod(
      id: Uuid.generate(),
      type: PaymentMethodType.digitalWallet,
      displayName: '$walletType - $identifier',
      details: {
        'walletType': walletType,
        'identifier': identifier,
      },
      isDefault: isDefault,
      isActive: true,
      createdAt: DateTime.now(),
    );
  }

  static String _detectCardBrand(String cardNumber) {
    if (cardNumber.startsWith('4')) return 'Visa';
    if (cardNumber.startsWith('5')) return 'MasterCard';
    if (cardNumber.startsWith('3')) return 'American Express';
    if (cardNumber.startsWith('6')) return 'Discover';
    return 'Unknown';
  }

  bool get isExpired => expiresAt != null && DateTime.now().isAfter(expiresAt!);
  
  bool get canUse => isActive && !isExpired;

  String get typeDisplayName {
    switch (type) {
      case PaymentMethodType.creditCard:
        return 'Credit Card';
      case PaymentMethodType.debitCard:
        return 'Debit Card';
      case PaymentMethodType.paypal:
        return 'PayPal';
      case PaymentMethodType.bankTransfer:
        return 'Bank Transfer';
      case PaymentMethodType.digitalWallet:
        return 'Digital Wallet';
      case PaymentMethodType.cryptocurrency:
        return 'Cryptocurrency';
      case PaymentMethodType.voucher:
        return 'Voucher';
    }
  }

  PaymentMethod markAsDefault() {
    return copyWith(isDefault: true);
  }

  PaymentMethod deactivate() {
    return copyWith(isActive: false, isDefault: false);
  }

  PaymentMethod activate() {
    return copyWith(isActive: true);
  }
}