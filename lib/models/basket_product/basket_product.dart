import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_product.freezed.dart';
part 'basket_product.g.dart';

@freezed
class BasketProduct with _$BasketProduct {
  const factory BasketProduct({
    required String productId,
    required String product,
    required int quantity,
    required String price,
  }) = _BasketProduct;

  factory BasketProduct.fromJson(Map<String, dynamic> json) => _$BasketProductFromJson(json);
}
