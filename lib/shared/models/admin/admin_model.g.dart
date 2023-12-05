// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminModel _$$_AdminModelFromJson(Map<String, dynamic> json) =>
    _$_AdminModel(
      id: json['id'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userName: json['userName'] as String?,
      phone: json['phone'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      salt: json['salt'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_AdminModelToJson(_$_AdminModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'role': instance.role,
      'salt': instance.salt,
      'isAdmin': instance.isAdmin,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
