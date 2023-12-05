// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      id: json['id'] as String,
      customer: json['customer'] == null
          ? null
          : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
      product: json['product'] as String,
      quantity: json['quantity'] as int,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'product': instance.product,
      'quantity': instance.quantity,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
