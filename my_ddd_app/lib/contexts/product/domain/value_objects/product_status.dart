import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_status.freezed.dart';
part 'product_status.g.dart';

@freezed
abstract class ProductStatus with _$ProductStatus {
  const ProductStatus._();

  const factory ProductStatus.available() = AvailableStatus;
  const factory ProductStatus.outOfStock() = OutOfStockStatus;
  const factory ProductStatus.discontinued() = DiscontinuedStatus;
  const factory ProductStatus.preOrder() = PreOrderStatus;

  factory ProductStatus.fromJson(Map<String, dynamic> json) =>
      _$ProductStatusFromJson(json);

  bool get isAvailable => this is AvailableStatus;
  bool get isOutOfStock => this is OutOfStockStatus;
  bool get isDiscontinued => this is DiscontinuedStatus;
  bool get isPreOrder => this is PreOrderStatus;

  bool get canPurchase => isAvailable || isPreOrder;
  bool get canReserve => isAvailable || isPreOrder;

  String get displayName => when(
        available: () => 'Available',
        outOfStock: () => 'Out of Stock',
        discontinued: () => 'Discontinued',
        preOrder: () => 'Pre-Order',
      );

  String get description => when(
        available: () => 'Item is in stock and ready to ship',
        outOfStock: () => 'Item is temporarily out of stock',
        discontinued: () => 'Item is no longer available',
        preOrder: () => 'Item is available for pre-order',
      );
}