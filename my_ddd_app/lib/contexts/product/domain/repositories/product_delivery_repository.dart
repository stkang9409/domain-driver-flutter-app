import 'package:fpdart/fpdart.dart';
import '../aggregates/product_delivery.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

abstract class ProductDeliveryRepository {
  Future<Either<String, ProductDelivery>> save(ProductDelivery delivery);
  Future<Either<String, ProductDelivery>> findById(Uuid id);
  Future<Either<String, List<ProductDelivery>>> findByOrderId(Uuid orderId);
  Future<Either<String, List<ProductDelivery>>> findByRecipientId(Uuid recipientId);
  Future<Either<String, List<ProductDelivery>>> findByProductId(Uuid productId);
  Future<Either<String, List<ProductDelivery>>> findAll();
  Future<Either<String, void>> delete(Uuid id);
}