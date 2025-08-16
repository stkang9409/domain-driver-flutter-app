import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

part 'product_delivery.freezed.dart';
part 'product_delivery.g.dart';

enum DeliveryStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
  failed,
}

enum DeliveryType {
  physical,
  digital,
  voucher,
  service,
}

@freezed
abstract class ProductDelivery with _$ProductDelivery {
  const ProductDelivery._();

  const factory ProductDelivery({
    required Uuid id,
    required Uuid orderId,
    required Uuid productId,
    required Uuid recipientId,
    required DeliveryType type,
    required DeliveryStatus status,
    required Map<String, dynamic> deliveryDetails,
    String? trackingNumber,
    DateTime? shippedAt,
    DateTime? deliveredAt,
    String? deliveryProof,
    String? failureReason,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProductDelivery;

  factory ProductDelivery.fromJson(Map<String, dynamic> json) =>
      _$ProductDeliveryFromJson(json);

  factory ProductDelivery.create({
    required Uuid orderId,
    required Uuid productId,
    required Uuid recipientId,
    required DeliveryType type,
    Map<String, dynamic>? deliveryDetails,
  }) {
    return ProductDelivery(
      id: Uuid.generate(),
      orderId: orderId,
      productId: productId,
      recipientId: recipientId,
      type: type,
      status: DeliveryStatus.pending,
      deliveryDetails: deliveryDetails ?? {},
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  Either<String, ProductDelivery> startProcessing() {
    if (status != DeliveryStatus.pending) {
      return left('Can only process pending deliveries');
    }
    return right(copyWith(
      status: DeliveryStatus.processing,
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, ProductDelivery> markAsShipped(String trackingNumber) {
    if (status != DeliveryStatus.processing) {
      return left('Can only ship deliveries that are being processed');
    }
    if (type != DeliveryType.physical) {
      return left('Only physical deliveries can be shipped');
    }
    return right(copyWith(
      status: DeliveryStatus.shipped,
      trackingNumber: trackingNumber,
      shippedAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, ProductDelivery> markAsDelivered({String? proof}) {
    if (type == DeliveryType.physical && status != DeliveryStatus.shipped) {
      return left('Physical delivery must be shipped before marking as delivered');
    }
    if (type != DeliveryType.physical && status != DeliveryStatus.processing) {
      return left('Non-physical delivery must be processing before marking as delivered');
    }
    return right(copyWith(
      status: DeliveryStatus.delivered,
      deliveredAt: DateTime.now(),
      deliveryProof: proof,
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, ProductDelivery> cancel(String reason) {
    if (status == DeliveryStatus.delivered) {
      return left('Cannot cancel delivered items');
    }
    if (status == DeliveryStatus.cancelled) {
      return left('Delivery is already cancelled');
    }
    return right(copyWith(
      status: DeliveryStatus.cancelled,
      failureReason: reason,
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, ProductDelivery> markAsFailed(String reason) {
    if (status == DeliveryStatus.delivered) {
      return left('Cannot mark delivered items as failed');
    }
    if (status == DeliveryStatus.cancelled) {
      return left('Delivery is already cancelled');
    }
    return right(copyWith(
      status: DeliveryStatus.failed,
      failureReason: reason,
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, ProductDelivery> updateDeliveryDetails(Map<String, dynamic> details) {
    if (status == DeliveryStatus.delivered || status == DeliveryStatus.cancelled) {
      return left('Cannot update details for completed or cancelled deliveries');
    }
    return right(copyWith(
      deliveryDetails: {...deliveryDetails, ...details},
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, ProductDelivery> deliverDigitalProduct({
    required String downloadUrl,
    required String accessKey,
  }) {
    if (type != DeliveryType.digital) {
      return left('This method is only for digital products');
    }
    if (status != DeliveryStatus.processing) {
      return left('Digital product must be processing before delivery');
    }
    return right(copyWith(
      status: DeliveryStatus.delivered,
      deliveryDetails: {
        ...deliveryDetails,
        'downloadUrl': downloadUrl,
        'accessKey': accessKey,
        'expiresAt': DateTime.now().add(const Duration(days: 7)).toIso8601String(),
      },
      deliveredAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ));
  }

  Either<String, ProductDelivery> deliverVoucher({
    required String voucherCode,
    DateTime? expiresAt,
  }) {
    if (type != DeliveryType.voucher) {
      return left('This method is only for vouchers');
    }
    if (status != DeliveryStatus.processing) {
      return left('Voucher must be processing before delivery');
    }
    return right(copyWith(
      status: DeliveryStatus.delivered,
      deliveryDetails: {
        ...deliveryDetails,
        'voucherCode': voucherCode,
        if (expiresAt != null) 'expiresAt': expiresAt.toIso8601String(),
      },
      deliveredAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ));
  }

  bool get isPending => status == DeliveryStatus.pending;
  bool get isProcessing => status == DeliveryStatus.processing;
  bool get isShipped => status == DeliveryStatus.shipped;
  bool get isDelivered => status == DeliveryStatus.delivered;
  bool get isCancelled => status == DeliveryStatus.cancelled;
  bool get isFailed => status == DeliveryStatus.failed;
  bool get isCompleted => isDelivered || isCancelled || isFailed;
  bool get canTrack => type == DeliveryType.physical && trackingNumber != null;
}