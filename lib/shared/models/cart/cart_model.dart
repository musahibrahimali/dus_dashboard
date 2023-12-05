import 'package:dus_dashboard/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required String id,
    required CustomerModel? customer,
    required String product,
    required int quantity,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CartModel;
  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);
}
