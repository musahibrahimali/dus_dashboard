import 'package:dus_dashboard/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_model.freezed.dart';
part 'sale_model.g.dart';

@freezed
class SaleModel with _$SaleModel {
  const factory SaleModel({
    required String id,
    required EmployeeModel employee,
    required String employeeId,
    required List<String> products,
    required int quantity,
    required double amount,
    required String currency,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SaleModel;

  factory SaleModel.fromJson(Map<String, dynamic> json) => _$SaleModelFromJson(json);
}
