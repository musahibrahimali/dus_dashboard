import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    required String? id,
    required String? startTime,
    required String? closeTime,
    required String? employeeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AttendanceModel;
  factory AttendanceModel.fromJson(Map<String, dynamic> json) => _$AttendanceModelFromJson(json);
}
