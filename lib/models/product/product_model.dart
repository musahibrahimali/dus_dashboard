import 'package:dus_dashboard/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String name,
    required String description,
    required PriceModel price,
    required List<String> image,
    required String depo,
    required String category,
    List<String>? cart,
    String? cartId,
    String? brand,
    double? rating,
    int? numReviews,
    int? numInStock,
    List<String>? colors,
    List<String>? sizes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
