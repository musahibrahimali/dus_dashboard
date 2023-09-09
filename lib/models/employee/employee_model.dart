import 'package:dus_dashboard/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    required String id,
    required String firstName,
    required String lastName,
    required String designation,
    required String phoneNumber,
    required List<AttendanceModel> attendance,
    String? email,
    String? avatar,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _EmployeeModel;
  factory EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);
}
