// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketProduct _$$_BasketProductFromJson(Map<String, dynamic> json) =>
    _$_BasketProduct(
      productId: json['productId'] as String,
      product: json['product'] as String,
      quantity: json['quantity'] as int,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$_BasketProductToJson(_$_BasketProduct instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
    };
