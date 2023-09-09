// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerModel _$$_CustomerModelFromJson(Map<String, dynamic> json) =>
    _$_CustomerModel(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userName: json['userName'] as String,
      phone: json['phone'] as String,
      social: json['social'] as String?,
      password: json['password'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      salt: json['salt'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      cart: (json['cart'] as List<dynamic>?)
          ?.map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_CustomerModelToJson(_$_CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'phone': instance.phone,
      'social': instance.social,
      'password': instance.password,
      'avatar': instance.avatar,
      'role': instance.role,
      'salt': instance.salt,
      'isAdmin': instance.isAdmin,
      'cart': instance.cart,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
