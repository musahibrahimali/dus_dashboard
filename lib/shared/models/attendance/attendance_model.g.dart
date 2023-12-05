// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceModel _$$_AttendanceModelFromJson(Map<String, dynamic> json) =>
    _$_AttendanceModel(
      id: json['id'] as String?,
      startTime: json['startTime'] as String?,
      closeTime: json['closeTime'] as String?,
      employeeId: json['employeeId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_AttendanceModelToJson(_$_AttendanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime,
      'closeTime': instance.closeTime,
      'employeeId': instance.employeeId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
