// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeModel _$$_EmployeeModelFromJson(Map<String, dynamic> json) =>
    _$_EmployeeModel(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      designation: json['designation'] as String,
      phoneNumber: json['phoneNumber'] as String,
      attendance: (json['attendance'] as List<dynamic>)
          .map((e) => AttendanceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_EmployeeModelToJson(_$_EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'designation': instance.designation,
      'phoneNumber': instance.phoneNumber,
      'attendance': instance.attendance,
      'email': instance.email,
      'avatar': instance.avatar,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
