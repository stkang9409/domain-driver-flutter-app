import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import '../../domain/aggregates/product.dart';
import '../../domain/aggregates/product_delivery.dart';
import '../../domain/repositories/product_repository.dart';
import '../../domain/repositories/product_delivery_repository.dart';
import '../../infrastructure/repositories/in_memory_product_repository.dart';
import '../../infrastructure/repositories/in_memory_product_delivery_repository.dart';
import '../commands/deliver_product_command.dart';

part 'deliver_product_handler.g.dart';

class DeliverProductHandler {
  final ProductRepository _productRepository;
  final ProductDeliveryRepository _deliveryRepository;
  final EventBus _eventBus;

  DeliverProductHandler({
    required ProductRepository productRepository,
    required ProductDeliveryRepository deliveryRepository,
    required EventBus eventBus,
  })  : _productRepository = productRepository,
        _deliveryRepository = deliveryRepository,
        _eventBus = eventBus;

  Future<Either<String, ProductDelivery>> execute(
    DeliverProductCommand command,
  ) async {
    try {
      // 1. Verify product exists
      final productResult = await _getProduct(command.productId);
      if (productResult.isLeft()) {
        return left('Product not found: ${command.productId}');
      }
      
      final product = productResult.getOrElse((_) => throw Exception());
      
      // 2. Check product availability
      if (!product.isAvailableForPurchase && command.reason == DeliveryReason.purchase) {
        return left('Product is not available for purchase');
      }
      
      // 3. Handle inventory for physical products (not needed for rewards)
      if (command.reason == DeliveryReason.purchase) {
        final inventoryResult = await _confirmInventory(
          command.productId,
          command.quantity,
          command.orderId,
        );
        
        if (inventoryResult.isLeft()) {
          return left('Inventory confirmation failed');
        }
      }
      
      // 4. Create delivery
      final delivery = ProductDelivery.create(
        orderId: Uuid.fromString(command.orderId),
        productId: Uuid.fromString(command.productId),
        recipientId: Uuid.fromString(command.recipientId),
        type: _determineDeliveryType(product),
        deliveryDetails: {
          'quantity': command.quantity,
          'reason': command.reason.name,
          ...?command.metadata,
        },
      );
      
      // 5. Start processing the delivery
      final processingResult = delivery.startProcessing();
      if (processingResult.isLeft()) {
        return processingResult;
      }
      
      final processingDelivery = processingResult.getOrElse((_) => delivery);
      
      // 6. For digital products or rewards, deliver immediately
      ProductDelivery finalDelivery;
      if (processingDelivery.type == DeliveryType.digital || 
          processingDelivery.type == DeliveryType.voucher) {
        final deliveryResult = await _deliverImmediately(processingDelivery, product);
        if (deliveryResult.isLeft()) {
          return deliveryResult;
        }
        finalDelivery = deliveryResult.getOrElse((_) => processingDelivery);
      } else {
        finalDelivery = processingDelivery;
      }
      
      // 7. Save delivery to repository
      final saveResult = await _deliveryRepository.save(finalDelivery);
      
      return saveResult.fold(
        (error) => left('Failed to save delivery: $error'),
        (savedDelivery) => right(savedDelivery),
      );
      
    } catch (e) {
      return left('Failed to deliver product: ${e.toString()}');
    }
  }
  
  DeliveryType _determineDeliveryType(Product product) {
    // Determine delivery type based on product attributes
    final productType = product.attributes['type'] as String?;
    
    switch (productType) {
      case 'digital':
        return DeliveryType.digital;
      case 'voucher':
        return DeliveryType.voucher;
      case 'service':
        return DeliveryType.service;
      default:
        return DeliveryType.physical;
    }
  }
  
  Future<Either<String, ProductDelivery>> _deliverImmediately(
    ProductDelivery delivery,
    Product product,
  ) async {
    if (delivery.type == DeliveryType.digital) {
      // Generate digital access
      final deliveredResult = delivery.deliverDigitalProduct(
        downloadUrl: 'https://download.example.com/${product.id.value}',
        accessKey: Uuid.generate().value,
      );
      return deliveredResult;
    } else if (delivery.type == DeliveryType.voucher) {
      // Generate voucher code
      final deliveredResult = delivery.deliverVoucher(
        voucherCode: _generateVoucherCode(product),
        expiresAt: DateTime.now().add(const Duration(days: 90)),
      );
      return deliveredResult;
    }
    
    return right(delivery);
  }
  
  String _generateVoucherCode(Product product) {
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString().substring(8);
    return '${product.sku.value}-$timestamp';
  }
  
  // Get product from repository
  Future<Either<String, Product>> _getProduct(String productId) async {
    return await _productRepository.findById(Uuid.fromString(productId));
  }
  
  Future<Either<String, void>> _confirmInventory(
    String productId,
    int quantity,
    String orderId,
  ) async {
    // Mock implementation - would call InventoryService
    return right(unit);
  }
}

@riverpod
ProductRepository productRepository(ref) {
  return InMemoryProductRepository();
}

@riverpod
ProductDeliveryRepository productDeliveryRepository(ref) {
  return InMemoryProductDeliveryRepository();
}

@riverpod
DeliverProductHandler deliverProductHandler(ref) {
  return DeliverProductHandler(
    productRepository: ref.watch(productRepositoryProvider),
    deliveryRepository: ref.watch(productDeliveryRepositoryProvider),
    eventBus: ref.watch(eventBusProvider),
  );
}
