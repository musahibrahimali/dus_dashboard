// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleModel _$SaleModelFromJson(Map<String, dynamic> json) {
  return _SaleModel.fromJson(json);
}

/// @nodoc
mixin _$SaleModel {
  String get id => throw _privateConstructorUsedError;
  EmployeeModel get employee => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;
  List<String> get products => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleModelCopyWith<SaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleModelCopyWith<$Res> {
  factory $SaleModelCopyWith(SaleModel value, $Res Function(SaleModel) then) =
      _$SaleModelCopyWithImpl<$Res, SaleModel>;
  @useResult
  $Res call(
      {String id,
      EmployeeModel employee,
      String employeeId,
      List<String> products,
      int quantity,
      double amount,
      String currency,
      DateTime createdAt,
      DateTime updatedAt});

  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class _$SaleModelCopyWithImpl<$Res, $Val extends SaleModel>
    implements $SaleModelCopyWith<$Res> {
  _$SaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employee = null,
    Object? employeeId = null,
    Object? products = null,
    Object? quantity = null,
    Object? amount = null,
    Object? currency = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeModelCopyWith<$Res> get employee {
    return $EmployeeModelCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SaleModelCopyWith<$Res> implements $SaleModelCopyWith<$Res> {
  factory _$$_SaleModelCopyWith(
          _$_SaleModel value, $Res Function(_$_SaleModel) then) =
      __$$_SaleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      EmployeeModel employee,
      String employeeId,
      List<String> products,
      int quantity,
      double amount,
      String currency,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class __$$_SaleModelCopyWithImpl<$Res>
    extends _$SaleModelCopyWithImpl<$Res, _$_SaleModel>
    implements _$$_SaleModelCopyWith<$Res> {
  __$$_SaleModelCopyWithImpl(
      _$_SaleModel _value, $Res Function(_$_SaleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employee = null,
    Object? employeeId = null,
    Object? products = null,
    Object? quantity = null,
    Object? amount = null,
    Object? currency = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_SaleModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleModel implements _SaleModel {
  const _$_SaleModel(
      {required this.id,
      required this.employee,
      required this.employeeId,
      required final List<String> products,
      required this.quantity,
      required this.amount,
      required this.currency,
      required this.createdAt,
      required this.updatedAt})
      : _products = products;

  factory _$_SaleModel.fromJson(Map<String, dynamic> json) =>
      _$$_SaleModelFromJson(json);

  @override
  final String id;
  @override
  final EmployeeModel employee;
  @override
  final String employeeId;
  final List<String> _products;
  @override
  List<String> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int quantity;
  @override
  final double amount;
  @override
  final String currency;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SaleModel(id: $id, employee: $employee, employeeId: $employeeId, products: $products, quantity: $quantity, amount: $amount, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
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
      employee,
      employeeId,
      const DeepCollectionEquality().hash(_products),
      quantity,
      amount,
      currency,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleModelCopyWith<_$_SaleModel> get copyWith =>
      __$$_SaleModelCopyWithImpl<_$_SaleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleModelToJson(
      this,
    );
  }
}

abstract class _SaleModel implements SaleModel {
  const factory _SaleModel(
      {required final String id,
      required final EmployeeModel employee,
      required final String employeeId,
      required final List<String> products,
      required final int quantity,
      required final double amount,
      required final String currency,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_SaleModel;

  factory _SaleModel.fromJson(Map<String, dynamic> json) =
      _$_SaleModel.fromJson;

  @override
  String get id;
  @override
  EmployeeModel get employee;
  @override
  String get employeeId;
  @override
  List<String> get products;
  @override
  int get quantity;
  @override
  double get amount;
  @override
  String get currency;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SaleModelCopyWith<_$_SaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
