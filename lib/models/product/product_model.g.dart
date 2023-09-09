// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: PriceModel.fromJson(json['price'] as Map<String, dynamic>),
      image: (json['image'] as List<dynamic>).map((e) => e as String).toList(),
      depo: json['depo'] as String,
      category: json['category'] as String,
      cart: (json['cart'] as List<dynamic>?)?.map((e) => e as String).toList(),
      cartId: json['cartId'] as String?,
      brand: json['brand'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      numReviews: json['numReviews'] as int?,
      numInStock: json['numInStock'] as int?,
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sizes:
          (json['sizes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
      'depo': instance.depo,
      'category': instance.category,
      'cart': instance.cart,
      'cartId': instance.cartId,
      'brand': instance.brand,
      'rating': instance.rating,
      'numReviews': instance.numReviews,
      'numInStock': instance.numInStock,
      'colors': instance.colors,
      'sizes': instance.sizes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
