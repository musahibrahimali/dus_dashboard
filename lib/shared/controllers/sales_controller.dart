import 'package:dus_dashboard/index.dart';
import 'package:get/get.dart';

class SalesController extends GetxController {
  static final SalesController _instance = Get.find();
  static SalesController get instance => _instance;
  final List<String> _padItems = <String>[
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    "C",
    "Delete",
  ];

  final List<String> _categories = <String>[
    "Men",
    "Women",
    "Kids",
  ];

  final _basketProducts = <BasketProduct>[].obs;
  final _selectedBasketProduct = Rxn<BasketProduct>();
  final _totalPrice = "0.00".obs;

  updateSelectedProduct(BasketProduct product) {
    _selectedBasketProduct.value = product;
  }

  clearSelectedProduct(BasketProduct product) {
    _selectedBasketProduct.value = null;
  }

  addProduct(BasketProduct product) {
    if (_basketProducts.isEmpty) {
      _basketProducts.add(product);
    } else {
      try {
        BasketProduct existingProduct = _basketProducts.firstWhere(
          (BasketProduct basketProduct) => basketProduct.productId == product.productId,
        );

        final existingProductIndex = _basketProducts.indexWhere((BasketProduct p) => p.productId == product.productId);
        if (existingProductIndex != -1) {
          _basketProducts[existingProductIndex] = existingProduct.copyWith(quantity: existingProduct.quantity + 1);
        } else {
          _basketProducts.add(product);
        }
      } catch (e) {
        _basketProducts.add(product);
      }
    }
    calculateTotal();
  }

  removeProduct(BasketProduct product) {
    _basketProducts.remove(product);
    calculateTotal();
  }

  changeNumber(String number) {
    final selectedProduct = _selectedBasketProduct.value;
    BasketProduct existingProduct = _basketProducts.firstWhere(
      (BasketProduct basketProduct) => basketProduct.productId == selectedProduct?.productId,
    );

    final existingProductIndex = _basketProducts.indexWhere((BasketProduct p) => p.productId == selectedProduct?.productId);
    if (existingProductIndex != -1) {
      _basketProducts[existingProductIndex] = existingProduct.copyWith(quantity: existingProduct.quantity + int.parse(number));
    }
    if (selectedProduct != null) {
      final updatedProduct = selectedProduct.copyWith(quantity: existingProduct.quantity + int.parse(number));
      _selectedBasketProduct.value = updatedProduct;
    }
    calculateTotal();
  }

  restoreQuantity() {
    final selectedProduct = _selectedBasketProduct.value;
    BasketProduct existingProduct = _basketProducts.firstWhere(
      (BasketProduct basketProduct) => basketProduct.productId == selectedProduct?.productId,
    );

    final existingProductIndex = _basketProducts.indexWhere((BasketProduct p) => p.productId == selectedProduct?.productId);
    if (existingProductIndex != -1) {
      _basketProducts[existingProductIndex] = existingProduct.copyWith(quantity: 1);
    }
    if (selectedProduct != null) {
      final updatedProduct = selectedProduct.copyWith(quantity: 1);
      _selectedBasketProduct.value = updatedProduct;
    }
    calculateTotal();
  }

  clearBasket() {
    _selectedBasketProduct.value = null;
    _basketProducts.value = <BasketProduct>[];
    _totalPrice.value = "0.00";
  }

  calculateTotal() {
    double totalPrice = 0.0;
    for (BasketProduct product in _basketProducts) {
      totalPrice += double.parse(product.price) * product.quantity;
    }
    _totalPrice.value = totalPrice.toStringAsFixed(2);
  }

  List<String> get padItems => _padItems;
  BasketProduct? get activeBasketProduct => _selectedBasketProduct.value;
  String get totalPrice => _totalPrice.value;
  List<BasketProduct> get basketProducts => _basketProducts;
  List<String> get categories => _categories;
}
