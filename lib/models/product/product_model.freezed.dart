// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  PriceModel get price => throw _privateConstructorUsedError;
  List<String> get image => throw _privateConstructorUsedError;
  String get depo => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String>? get cart => throw _privateConstructorUsedError;
  String? get cartId => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get numReviews => throw _privateConstructorUsedError;
  int? get numInStock => throw _privateConstructorUsedError;
  List<String>? get colors => throw _privateConstructorUsedError;
  List<String>? get sizes => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      PriceModel price,
      List<String> image,
      String depo,
      String category,
      List<String>? cart,
      String? cartId,
      String? brand,
      double? rating,
      int? numReviews,
      int? numInStock,
      List<String>? colors,
      List<String>? sizes,
      DateTime? createdAt,
      DateTime? updatedAt});

  $PriceModelCopyWith<$Res> get price;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? image = null,
    Object? depo = null,
    Object? category = null,
    Object? cart = freezed,
    Object? cartId = freezed,
    Object? brand = freezed,
    Object? rating = freezed,
    Object? numReviews = freezed,
    Object? numInStock = freezed,
    Object? colors = freezed,
    Object? sizes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      depo: null == depo
          ? _value.depo
          : depo // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cartId: freezed == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      numReviews: freezed == numReviews
          ? _value.numReviews
          : numReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      numInStock: freezed == numInStock
          ? _value.numInStock
          : numInStock // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sizes: freezed == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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

  @override
  @pragma('vm:prefer-inline')
  $PriceModelCopyWith<$Res> get price {
    return $PriceModelCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      PriceModel price,
      List<String> image,
      String depo,
      String category,
      List<String>? cart,
      String? cartId,
      String? brand,
      double? rating,
      int? numReviews,
      int? numInStock,
      List<String>? colors,
      List<String>? sizes,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $PriceModelCopyWith<$Res> get price;
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? image = null,
    Object? depo = null,
    Object? category = null,
    Object? cart = freezed,
    Object? cartId = freezed,
    Object? brand = freezed,
    Object? rating = freezed,
    Object? numReviews = freezed,
    Object? numInStock = freezed,
    Object? colors = freezed,
    Object? sizes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>,
      depo: null == depo
          ? _value.depo
          : depo // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      cart: freezed == cart
          ? _value._cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cartId: freezed == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      numReviews: freezed == numReviews
          ? _value.numReviews
          : numReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      numInStock: freezed == numInStock
          ? _value.numInStock
          : numInStock // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sizes: freezed == sizes
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required final List<String> image,
      required this.depo,
      required this.category,
      final List<String>? cart,
      this.cartId,
      this.brand,
      this.rating,
      this.numReviews,
      this.numInStock,
      final List<String>? colors,
      final List<String>? sizes,
      this.createdAt,
      this.updatedAt})
      : _image = image,
        _cart = cart,
        _colors = colors,
        _sizes = sizes;

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final PriceModel price;
  final List<String> _image;
  @override
  List<String> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  final String depo;
  @override
  final String category;
  final List<String>? _cart;
  @override
  List<String>? get cart {
    final value = _cart;
    if (value == null) return null;
    if (_cart is EqualUnmodifiableListView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? cartId;
  @override
  final String? brand;
  @override
  final double? rating;
  @override
  final int? numReviews;
  @override
  final int? numInStock;
  final List<String>? _colors;
  @override
  List<String>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _sizes;
  @override
  List<String>? get sizes {
    final value = _sizes;
    if (value == null) return null;
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, description: $description, price: $price, image: $image, depo: $depo, category: $category, cart: $cart, cartId: $cartId, brand: $brand, rating: $rating, numReviews: $numReviews, numInStock: $numInStock, colors: $colors, sizes: $sizes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.depo, depo) || other.depo == depo) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._cart, _cart) &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.numReviews, numReviews) ||
                other.numReviews == numReviews) &&
            (identical(other.numInStock, numInStock) ||
                other.numInStock == numInStock) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes) &&
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
      name,
      description,
      price,
      const DeepCollectionEquality().hash(_image),
      depo,
      category,
      const DeepCollectionEquality().hash(_cart),
      cartId,
      brand,
      rating,
      numReviews,
      numInStock,
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_sizes),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {required final String id,
      required final String name,
      required final String description,
      required final PriceModel price,
      required final List<String> image,
      required final String depo,
      required final String category,
      final List<String>? cart,
      final String? cartId,
      final String? brand,
      final double? rating,
      final int? numReviews,
      final int? numInStock,
      final List<String>? colors,
      final List<String>? sizes,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  PriceModel get price;
  @override
  List<String> get image;
  @override
  String get depo;
  @override
  String get category;
  @override
  List<String>? get cart;
  @override
  String? get cartId;
  @override
  String? get brand;
  @override
  double? get rating;
  @override
  int? get numReviews;
  @override
  int? get numInStock;
  @override
  List<String>? get colors;
  @override
  List<String>? get sizes;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
