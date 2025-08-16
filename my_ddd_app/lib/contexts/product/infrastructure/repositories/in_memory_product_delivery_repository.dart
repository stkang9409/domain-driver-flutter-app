import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../../domain/aggregates/product_delivery.dart';
import '../../domain/repositories/product_delivery_repository.dart';

class InMemoryProductDeliveryRepository implements ProductDeliveryRepository {
  final Map<String, ProductDelivery> _storage = {};

  @override
  Future<Either<String, ProductDelivery>> save(ProductDelivery delivery) async {
    try {
      _storage[delivery.id.value] = delivery;
      return right(delivery);
    } catch (e) {
      return left('Failed to save product delivery: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, ProductDelivery>> findById(Uuid id) async {
    final delivery = _storage[id.value];
    if (delivery == null) {
      return left('Product delivery not found with id: ${id.value}');
    }
    return right(delivery);
  }

  @override
  Future<Either<String, List<ProductDelivery>>> findByOrderId(Uuid orderId) async {
    final deliveries = _storage.values
        .where((delivery) => delivery.orderId.value == orderId.value)
        .toList();
    return right(deliveries);
  }

  @override
  Future<Either<String, List<ProductDelivery>>> findByRecipientId(Uuid recipientId) async {
    final deliveries = _storage.values
        .where((delivery) => delivery.recipientId.value == recipientId.value)
        .toList();
    return right(deliveries);
  }

  @override
  Future<Either<String, List<ProductDelivery>>> findByProductId(Uuid productId) async {
    final deliveries = _storage.values
        .where((delivery) => delivery.productId.value == productId.value)
        .toList();
    return right(deliveries);
  }

  @override
  Future<Either<String, List<ProductDelivery>>> findAll() async {
    return right(_storage.values.toList());
  }

  @override
  Future<Either<String, void>> delete(Uuid id) async {
    _storage.remove(id.value);
    return right(unit);
  }
}