import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_amount.freezed.dart';
part 'reward_amount.g.dart';

@freezed
abstract class RewardAmount with _$RewardAmount {
  const RewardAmount._();

  const factory RewardAmount({
    required double value,
    required String currency,
  }) = _RewardAmount;

  factory RewardAmount.fromJson(Map<String, dynamic> json) =>
      _$RewardAmountFromJson(json);

  factory RewardAmount.zero([String currency = 'USD']) {
    return RewardAmount(value: 0, currency: currency);
  }

  RewardAmount add(RewardAmount other) {
    if (currency != other.currency) {
      throw ArgumentError('Cannot add amounts with different currencies');
    }
    return copyWith(value: value + other.value);
  }

  RewardAmount subtract(RewardAmount other) {
    if (currency != other.currency) {
      throw ArgumentError('Cannot subtract amounts with different currencies');
    }
    return copyWith(value: value - other.value);
  }

  RewardAmount multiply(double factor) {
    return copyWith(value: value * factor);
  }

  bool isGreaterThan(RewardAmount other) {
    if (currency != other.currency) {
      throw ArgumentError('Cannot compare amounts with different currencies');
    }
    return value > other.value;
  }

  bool isLessThan(RewardAmount other) {
    if (currency != other.currency) {
      throw ArgumentError('Cannot compare amounts with different currencies');
    }
    return value < other.value;
  }

  String get displayValue {
    if (currency == 'USD') {
      return '\$${value.toStringAsFixed(2)}';
    }
    return '$value $currency';
  }
}