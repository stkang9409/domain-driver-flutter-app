import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../../domain/aggregates/payment.dart';
import '../../domain/repositories/payment_repository.dart';

class InMemoryPaymentRepository implements PaymentRepository {
  final Map<String, PaymentAggregate> _storage = {};

  @override
  Future<Either<String, PaymentAggregate>> save(PaymentAggregate payment) async {
    try {
      _storage[payment.payment.id.value] = payment;
      return right(payment);
    } catch (e) {
      return left('Failed to save payment: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, PaymentAggregate>> findById(Uuid id) async {
    final payment = _storage[id.value];
    if (payment == null) {
      return left('Payment not found with id: ${id.value}');
    }
    return right(payment);
  }

  @override
  Future<Either<String, List<PaymentAggregate>>> findByOrderId(String orderId) async {
    final payments = _storage.values
        .where((p) => p.payment.orderId.value == orderId)
        .toList();
    return right(payments);
  }

  @override
  Future<Either<String, List<PaymentAggregate>>> findByPayerId(String payerId) async {
    final payments = _storage.values
        .where((p) => p.payment.payerId.value == payerId)
        .toList();
    return right(payments);
  }

  @override
  Future<Either<String, void>> delete(Uuid id) async {
    if (!_storage.containsKey(id.value)) {
      return left('Payment not found with id: ${id.value}');
    }
    _storage.remove(id.value);
    return right(unit);
  }
}