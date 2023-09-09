import 'package:dus_dashboard/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required String userName,
    required String phone,
    String? social,
    String? password,
    String? avatar,
    String? role,
    String? salt,
    bool? isAdmin,
    List<CartModel>? cart,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CustomerModel;
  factory CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);
}
