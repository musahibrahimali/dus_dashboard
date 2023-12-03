import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  static final ProductsController _instance = Get.find();
  static ProductsController get instance => _instance;

  final _showDeleteButton = false.obs;

  final _allProducts = <ProductModel>[].obs;
  final _filteredProducts = <ProductModel>[].obs;
  final TextEditingController _searchTextController = TextEditingController();

  searchProduct(String value) {
    if (value.isEmpty) {
      _filteredProducts.value = _allProducts.toList();
    } else {
      _filteredProducts.value = _allProducts
          .where(
            (product) => product.name.toString().toLowerCase().contains(value.toLowerCase()),
          )
          .toList();
    }
  }

  void filterProducts(String value) {
    if (value.isEmpty) {
      _filteredProducts.value = _allProducts.toList();
    } else {
      _filteredProducts.value = _allProducts.where((product) => product.name.contains(value)).where((product) => product.depo.contains(value)).toList();
    }
    update();
  }

  addProduct({required ProductModel productModel}) {
    _allProducts.add(productModel);
  }

  addProducts({required List<ProductModel> products}) {
    resetProductsList();
    _allProducts.addAll(products);
    _filteredProducts.addAll(products);
    update();
  }

  resetProductsList() {
    _allProducts.clear();
    _filteredProducts.clear();
  }

  getProduct({required String id}) {
    if (_allProducts.isNotEmpty) {
      for (ProductModel product in _allProducts) {
        if (product.id == id) {
          return product;
        }
      }
      return null;
    }
    return null;
  }

  addAllProducts({required List<ProductModel> products}) {
    resetProductsList();
    _allProducts.addAll(products);
  }

  updateDeleteButtonVisibility({required bool value}) {
    _showDeleteButton.value = value;
    update();
  }

  List<ProductModel> get products => _allProducts;
  int get numberOfProducts => _allProducts.length;
  List<ProductModel> get filteredProducts => _filteredProducts;
  TextEditingController get searchTextController => _searchTextController;
  bool get showDeleteButton => _showDeleteButton.value;
}
