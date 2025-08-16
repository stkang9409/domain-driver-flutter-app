import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_price.freezed.dart';
part 'product_price.g.dart';

@freezed
abstract class ProductPrice with _$ProductPrice {
  const ProductPrice._();

  const factory ProductPrice({
    required double amount,
    required String currency,
    double? discountedAmount,
  }) = _ProductPrice;

  factory ProductPrice.fromJson(Map<String, dynamic> json) =>
      _$ProductPriceFromJson(json);

  factory ProductPrice.zero([String currency = 'USD']) {
    return ProductPrice(amount: 0, currency: currency);
  }

  double get finalAmount => discountedAmount ?? amount;
  
  double get discountPercentage {
    if (discountedAmount == null) return 0;
    return ((amount - discountedAmount!) / amount) * 100;
  }

  bool get hasDiscount => discountedAmount != null && discountedAmount! < amount;

  ProductPrice applyDiscount(double percentage) {
    if (percentage <= 0 || percentage > 100) {
      throw ArgumentError('Discount percentage must be between 0 and 100');
    }
    return copyWith(
      discountedAmount: amount * (1 - percentage / 100),
    );
  }

  String get displayPrice {
    if (currency == 'USD') {
      return '\$${finalAmount.toStringAsFixed(2)}';
    }
    return '${finalAmount.toStringAsFixed(2)} $currency';
  }

  String get displayOriginalPrice {
    if (currency == 'USD') {
      return '\$${amount.toStringAsFixed(2)}';
    }
    return '${amount.toStringAsFixed(2)} $currency';
  }
}