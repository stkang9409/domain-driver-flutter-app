import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_code.freezed.dart';
part 'referral_code.g.dart';

@freezed
abstract class ReferralCode with _$ReferralCode {
  const ReferralCode._();

  const factory ReferralCode({
    required String value,
  }) = _ReferralCode;

  factory ReferralCode.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeFromJson(json);

  factory ReferralCode.generate() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    final code = List.generate(
      8,
      (index) => chars[random.nextInt(chars.length)],
    ).join();
    return ReferralCode(value: code);
  }

  factory ReferralCode.custom(String code) {
    if (code.isEmpty) {
      throw ArgumentError('Referral code cannot be empty');
    }
    if (code.length < 4) {
      throw ArgumentError('Referral code must be at least 4 characters');
    }
    if (code.length > 20) {
      throw ArgumentError('Referral code must be at most 20 characters');
    }
    if (!RegExp(r'^[A-Z0-9]+$').hasMatch(code.toUpperCase())) {
      throw ArgumentError('Referral code must contain only letters and numbers');
    }
    return ReferralCode(value: code.toUpperCase());
  }

  bool isValid() {
    return value.isNotEmpty &&
        value.length >= 4 &&
        value.length <= 20 &&
        RegExp(r'^[A-Z0-9]+$').hasMatch(value);
  }

  String get displayValue => value;
}