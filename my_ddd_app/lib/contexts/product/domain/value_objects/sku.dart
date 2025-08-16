import 'package:freezed_annotation/freezed_annotation.dart';

part 'sku.freezed.dart';
part 'sku.g.dart';

@freezed
abstract class SKU with _$SKU {
  const SKU._();

  const factory SKU({
    required String value,
  }) = _SKU;

  factory SKU.fromJson(Map<String, dynamic> json) => _$SKUFromJson(json);

  factory SKU.generate({
    required String prefix,
    required String productCode,
    String? variantCode,
  }) {
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString().substring(6);
    final variant = variantCode ?? '';
    return SKU(value: '$prefix-$productCode$variant-$timestamp');
  }

  factory SKU.fromString(String value) {
    if (value.isEmpty) {
      throw ArgumentError('SKU cannot be empty');
    }
    if (!RegExp(r'^[A-Z0-9\-]+$').hasMatch(value.toUpperCase())) {
      throw ArgumentError('SKU must contain only letters, numbers, and hyphens');
    }
    return SKU(value: value.toUpperCase());
  }

  bool isValid() {
    return value.isNotEmpty && RegExp(r'^[A-Z0-9\-]+$').hasMatch(value);
  }

  String get displayValue => value;
}