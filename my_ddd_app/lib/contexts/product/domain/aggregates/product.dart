import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../value_objects/product_price.dart';
import '../value_objects/product_status.dart';
import '../value_objects/sku.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const Product._();

  const factory Product({
    required Uuid id,
    required String name,
    required String description,
    required SKU sku,
    required ProductPrice price,
    required ProductStatus status,
    required String category,
    required List<String> tags,
    required Map<String, dynamic> attributes,
    String? imageUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  factory Product.create({
    required String name,
    required String description,
    required String sku,
    required double price,
    required String category,
    String currency = 'USD',
    List<String>? tags,
    Map<String, dynamic>? attributes,
    String? imageUrl,
  }) {
    return Product(
      id: Uuid.generate(),
      name: name,
      description: description,
      sku: SKU.fromString(sku),
      price: ProductPrice(amount: price, currency: currency),
      status: const ProductStatus.available(),
      category: category,
      tags: tags ?? [],
      attributes: attributes ?? {},
      imageUrl: imageUrl,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  Either<String, Product> updatePrice(double newPrice) {
    if (newPrice < 0) {
      return left('Price cannot be negative');
    }
    return right(copyWith(
      price: price.copyWith(amount: newPrice),
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, Product> applyDiscount(double percentage) {
    if (percentage <= 0 || percentage > 100) {
      return left('Invalid discount percentage');
    }
    if (status.isDiscontinued) {
      return left('Cannot apply discount to discontinued product');
    }
    return right(copyWith(
      price: price.applyDiscount(percentage),
      updatedAt: DateTime.now(),
    ));
  }

  Product markAsOutOfStock() {
    return copyWith(
      status: const ProductStatus.outOfStock(),
      updatedAt: DateTime.now(),
    );
  }

  Product markAsAvailable() {
    return copyWith(
      status: const ProductStatus.available(),
      updatedAt: DateTime.now(),
    );
  }

  Product discontinue() {
    return copyWith(
      status: const ProductStatus.discontinued(),
      updatedAt: DateTime.now(),
    );
  }

  Either<String, Product> updateStatus(ProductStatus newStatus) {
    if (status.isDiscontinued && !newStatus.isDiscontinued) {
      return left('Cannot reactivate discontinued product');
    }
    return right(copyWith(
      status: newStatus,
      updatedAt: DateTime.now(),
    ));
  }

  Product addTag(String tag) {
    if (tags.contains(tag)) return this;
    return copyWith(
      tags: [...tags, tag],
      updatedAt: DateTime.now(),
    );
  }

  Product removeTag(String tag) {
    return copyWith(
      tags: tags.where((t) => t != tag).toList(),
      updatedAt: DateTime.now(),
    );
  }

  Product updateAttribute(String key, dynamic value) {
    return copyWith(
      attributes: {...attributes, key: value},
      updatedAt: DateTime.now(),
    );
  }

  bool get isAvailableForPurchase => status.canPurchase && price.finalAmount > 0;
  bool get hasImage => imageUrl != null && imageUrl!.isNotEmpty;
}