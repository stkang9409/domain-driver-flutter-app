import 'package:fpdart/fpdart.dart';
import '../aggregates/product.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

abstract class ProductRepository {
  Future<Either<String, Product>> save(Product product);
  Future<Either<String, Product>> findById(Uuid id);
  Future<Either<String, Product?>> findBySku(String sku);
  Future<Either<String, List<Product>>> findByCategory(String category);
  Future<Either<String, List<Product>>> findAll();
  Future<Either<String, void>> delete(Uuid id);
}