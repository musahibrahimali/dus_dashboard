// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceModel _$$_PriceModelFromJson(Map<String, dynamic> json) =>
    _$_PriceModel(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$_PriceModelToJson(_$_PriceModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };
