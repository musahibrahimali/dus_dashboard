// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketProduct _$BasketProductFromJson(Map<String, dynamic> json) {
  return _BasketProduct.fromJson(json);
}

/// @nodoc
mixin _$BasketProduct {
  String get productId => throw _privateConstructorUsedError;
  String get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketProductCopyWith<BasketProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketProductCopyWith<$Res> {
  factory $BasketProductCopyWith(
          BasketProduct value, $Res Function(BasketProduct) then) =
      _$BasketProductCopyWithImpl<$Res, BasketProduct>;
  @useResult
  $Res call({String productId, String product, int quantity, String price});
}

/// @nodoc
class _$BasketProductCopyWithImpl<$Res, $Val extends BasketProduct>
    implements $BasketProductCopyWith<$Res> {
  _$BasketProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? product = null,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasketProductCopyWith<$Res>
    implements $BasketProductCopyWith<$Res> {
  factory _$$_BasketProductCopyWith(
          _$_BasketProduct value, $Res Function(_$_BasketProduct) then) =
      __$$_BasketProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, String product, int quantity, String price});
}

/// @nodoc
class __$$_BasketProductCopyWithImpl<$Res>
    extends _$BasketProductCopyWithImpl<$Res, _$_BasketProduct>
    implements _$$_BasketProductCopyWith<$Res> {
  __$$_BasketProductCopyWithImpl(
      _$_BasketProduct _value, $Res Function(_$_BasketProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? product = null,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_$_BasketProduct(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketProduct implements _BasketProduct {
  const _$_BasketProduct(
      {required this.productId,
      required this.product,
      required this.quantity,
      required this.price});

  factory _$_BasketProduct.fromJson(Map<String, dynamic> json) =>
      _$$_BasketProductFromJson(json);

  @override
  final String productId;
  @override
  final String product;
  @override
  final int quantity;
  @override
  final String price;

  @override
  String toString() {
    return 'BasketProduct(productId: $productId, product: $product, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketProduct &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, product, quantity, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketProductCopyWith<_$_BasketProduct> get copyWith =>
      __$$_BasketProductCopyWithImpl<_$_BasketProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketProductToJson(
      this,
    );
  }
}

abstract class _BasketProduct implements BasketProduct {
  const factory _BasketProduct(
      {required final String productId,
      required final String product,
      required final int quantity,
      required final String price}) = _$_BasketProduct;

  factory _BasketProduct.fromJson(Map<String, dynamic> json) =
      _$_BasketProduct.fromJson;

  @override
  String get productId;
  @override
  String get product;
  @override
  int get quantity;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$_BasketProductCopyWith<_$_BasketProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
