// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) {
  return _EmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeModel {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get designation => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  List<AttendanceModel> get attendance => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeModelCopyWith<EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeModelCopyWith<$Res> {
  factory $EmployeeModelCopyWith(
          EmployeeModel value, $Res Function(EmployeeModel) then) =
      _$EmployeeModelCopyWithImpl<$Res, EmployeeModel>;
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String designation,
      String phoneNumber,
      List<AttendanceModel> attendance,
      String? email,
      String? avatar,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res, $Val extends EmployeeModel>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? designation = null,
    Object? phoneNumber = null,
    Object? attendance = null,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceModel>,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeModelCopyWith<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  factory _$$_EmployeeModelCopyWith(
          _$_EmployeeModel value, $Res Function(_$_EmployeeModel) then) =
      __$$_EmployeeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String designation,
      String phoneNumber,
      List<AttendanceModel> attendance,
      String? email,
      String? avatar,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_EmployeeModelCopyWithImpl<$Res>
    extends _$EmployeeModelCopyWithImpl<$Res, _$_EmployeeModel>
    implements _$$_EmployeeModelCopyWith<$Res> {
  __$$_EmployeeModelCopyWithImpl(
      _$_EmployeeModel _value, $Res Function(_$_EmployeeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? designation = null,
    Object? phoneNumber = null,
    Object? attendance = null,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_EmployeeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: null == attendance
          ? _value._attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as List<AttendanceModel>,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeModel implements _EmployeeModel {
  const _$_EmployeeModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.designation,
      required this.phoneNumber,
      required final List<AttendanceModel> attendance,
      this.email,
      this.avatar,
      this.createdAt,
      this.updatedAt})
      : _attendance = attendance;

  factory _$_EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeModelFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String designation;
  @override
  final String phoneNumber;
  final List<AttendanceModel> _attendance;
  @override
  List<AttendanceModel> get attendance {
    if (_attendance is EqualUnmodifiableListView) return _attendance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendance);
  }

  @override
  final String? email;
  @override
  final String? avatar;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EmployeeModel(id: $id, firstName: $firstName, lastName: $lastName, designation: $designation, phoneNumber: $phoneNumber, attendance: $attendance, email: $email, avatar: $avatar, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._attendance, _attendance) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      designation,
      phoneNumber,
      const DeepCollectionEquality().hash(_attendance),
      email,
      avatar,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeModelCopyWith<_$_EmployeeModel> get copyWith =>
      __$$_EmployeeModelCopyWithImpl<_$_EmployeeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeModelToJson(
      this,
    );
  }
}

abstract class _EmployeeModel implements EmployeeModel {
  const factory _EmployeeModel(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String designation,
      required final String phoneNumber,
      required final List<AttendanceModel> attendance,
      final String? email,
      final String? avatar,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_EmployeeModel;

  factory _EmployeeModel.fromJson(Map<String, dynamic> json) =
      _$_EmployeeModel.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get designation;
  @override
  String get phoneNumber;
  @override
  List<AttendanceModel> get attendance;
  @override
  String? get email;
  @override
  String? get avatar;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeModelCopyWith<_$_EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
