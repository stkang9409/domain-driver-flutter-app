import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import '../../domain/aggregates/product.dart';
import '../../domain/repositories/product_repository.dart';

class InMemoryProductRepository implements ProductRepository {
  final Map<String, Product> _storage = {};
  final Map<String, Product> _skuIndex = {};

  @override
  Future<Either<String, Product>> save(Product product) async {
    try {
      _storage[product.id.value] = product;
      _skuIndex[product.sku.value] = product;
      return right(product);
    } catch (e) {
      return left('Failed to save product: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, Product>> findById(Uuid id) async {
    final product = _storage[id.value];
    if (product == null) {
      return left('Product not found with id: ${id.value}');
    }
    return right(product);
  }

  @override
  Future<Either<String, Product?>> findBySku(String sku) async {
    return right(_skuIndex[sku]);
  }

  @override
  Future<Either<String, List<Product>>> findByCategory(String category) async {
    final products = _storage.values
        .where((product) => product.category == category)
        .toList();
    return right(products);
  }

  @override
  Future<Either<String, List<Product>>> findAll() async {
    return right(_storage.values.toList());
  }

  @override
  Future<Either<String, void>> delete(Uuid id) async {
    final product = _storage[id.value];
    if (product != null) {
      _storage.remove(id.value);
      _skuIndex.remove(product.sku.value);
    }
    return right(unit);
  }
}