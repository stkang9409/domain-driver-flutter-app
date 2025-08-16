import 'package:fpdart/fpdart.dart';
import '../aggregates/payment.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

abstract class PaymentRepository {
  Future<Either<String, PaymentAggregate>> save(PaymentAggregate payment);
  Future<Either<String, PaymentAggregate>> findById(Uuid id);
  Future<Either<String, List<PaymentAggregate>>> findByOrderId(String orderId);
  Future<Either<String, List<PaymentAggregate>>> findByPayerId(String payerId);
  Future<Either<String, void>> delete(Uuid id);
}