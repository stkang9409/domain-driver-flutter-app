// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
      id: Uuid.fromJson(json['id'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      sku: SKU.fromJson(json['sku'] as Map<String, dynamic>),
      price: ProductPrice.fromJson(json['price'] as Map<String, dynamic>),
      status: ProductStatus.fromJson(json['status'] as Map<String, dynamic>),
      category: json['category'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      attributes: json['attributes'] as Map<String, dynamic>,
      imageUrl: json['imageUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'sku': instance.sku,
      'price': instance.price,
      'status': instance.status,
      'category': instance.category,
      'tags': instance.tags,
      'attributes': instance.attributes,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
