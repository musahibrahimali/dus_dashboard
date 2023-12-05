import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  static final ProductsController _instance = Get.find();
  static ProductsController get instance => _instance;

  final _allProducts = <ProductModel>[].obs;
  final _filteredProducts = <ProductModel>[].obs;
  final TextEditingController _searchTextController = TextEditingController();

  final _menProducts = 0.obs;
  final _womenProducts = 0.obs;
  final _kidsProducts = 0.obs;

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
      _filteredProducts.value = _allProducts.where((product) => product.name.toLowerCase().contains(value.toLowerCase())).toList();
    }
    update();
  }

  /// filter by depo
  void filterProductsByDepo(String value) {
    if (value.isEmpty) {
      _filteredProducts.value = _allProducts.toList();
    } else {
      _filteredProducts.value = _allProducts.where((product) => product.depo.toLowerCase().contains(value.toLowerCase())).toList();
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
    countProducts();
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

  countProducts() {
    _womenProducts.value = 0;
    _menProducts.value = 0;
    _kidsProducts.value = 0;

    /// Get and update the number of men, women and kid products
    for (ProductModel product in _allProducts) {
      if (product.depo.toLowerCase().contains("Kids".toLowerCase())) {
        _kidsProducts.value++;
      }
      if (product.depo.toLowerCase().contains("Men".toLowerCase())) {
        _menProducts.value++;
      }
      if (product.depo.toLowerCase().contains("Women".toLowerCase())) {
        _womenProducts.value++;
      }
    }
    update();
  }

  List<ProductModel> get products => _allProducts;
  int get numberOfProducts => _allProducts.length;
  int get numberOfKidProducts => _kidsProducts.value;
  int get numberOfMenProducts => _menProducts.value;
  int get numberOfWomenProducts => _womenProducts.value;
  List<ProductModel> get filteredProducts => _filteredProducts;
  TextEditingController get searchTextController => _searchTextController;
}
