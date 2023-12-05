// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaleModel _$$_SaleModelFromJson(Map<String, dynamic> json) => _$_SaleModel(
      id: json['id'] as String,
      employee:
          EmployeeModel.fromJson(json['employee'] as Map<String, dynamic>),
      employeeId: json['employeeId'] as String,
      products:
          (json['products'] as List<dynamic>).map((e) => e as String).toList(),
      quantity: json['quantity'] as int,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_SaleModelToJson(_$_SaleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee': instance.employee,
      'employeeId': instance.employeeId,
      'products': instance.products,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'currency': instance.currency,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
