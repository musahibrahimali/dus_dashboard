// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) {
  return _AttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceModel {
  String? get id => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get closeTime => throw _privateConstructorUsedError;
  String? get employeeId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceModelCopyWith<AttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceModelCopyWith<$Res> {
  factory $AttendanceModelCopyWith(
          AttendanceModel value, $Res Function(AttendanceModel) then) =
      _$AttendanceModelCopyWithImpl<$Res, AttendanceModel>;
  @useResult
  $Res call(
      {String? id,
      String? startTime,
      String? closeTime,
      String? employeeId,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$AttendanceModelCopyWithImpl<$Res, $Val extends AttendanceModel>
    implements $AttendanceModelCopyWith<$Res> {
  _$AttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = freezed,
    Object? closeTime = freezed,
    Object? employeeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closeTime: freezed == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_AttendanceModelCopyWith<$Res>
    implements $AttendanceModelCopyWith<$Res> {
  factory _$$_AttendanceModelCopyWith(
          _$_AttendanceModel value, $Res Function(_$_AttendanceModel) then) =
      __$$_AttendanceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? startTime,
      String? closeTime,
      String? employeeId,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_AttendanceModelCopyWithImpl<$Res>
    extends _$AttendanceModelCopyWithImpl<$Res, _$_AttendanceModel>
    implements _$$_AttendanceModelCopyWith<$Res> {
  __$$_AttendanceModelCopyWithImpl(
      _$_AttendanceModel _value, $Res Function(_$_AttendanceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startTime = freezed,
    Object? closeTime = freezed,
    Object? employeeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_AttendanceModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closeTime: freezed == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
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
class _$_AttendanceModel implements _AttendanceModel {
  const _$_AttendanceModel(
      {required this.id,
      required this.startTime,
      required this.closeTime,
      required this.employeeId,
      this.createdAt,
      this.updatedAt});

  factory _$_AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceModelFromJson(json);

  @override
  final String? id;
  @override
  final String? startTime;
  @override
  final String? closeTime;
  @override
  final String? employeeId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AttendanceModel(id: $id, startTime: $startTime, closeTime: $closeTime, employeeId: $employeeId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, startTime, closeTime, employeeId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceModelCopyWith<_$_AttendanceModel> get copyWith =>
      __$$_AttendanceModelCopyWithImpl<_$_AttendanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceModelToJson(
      this,
    );
  }
}

abstract class _AttendanceModel implements AttendanceModel {
  const factory _AttendanceModel(
      {required final String? id,
      required final String? startTime,
      required final String? closeTime,
      required final String? employeeId,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_AttendanceModel;

  factory _AttendanceModel.fromJson(Map<String, dynamic> json) =
      _$_AttendanceModel.fromJson;

  @override
  String? get id;
  @override
  String? get startTime;
  @override
  String? get closeTime;
  @override
  String? get employeeId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceModelCopyWith<_$_AttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
