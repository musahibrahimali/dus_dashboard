import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dus_dashboard/index.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ProductRepo {
  ProductRepo._();

  static final _instance = ProductRepo._();
  static ProductRepo get instance => _instance;

  /// create employee
  Future<Either<Failure, ProductModel>> createProduct({
    required Map<String, dynamic> data,
    required List<PlatformFile> files,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.multiPartRequest(
        method: "POST",
        path: ApiEndPoint.createProductEndpoint,
        fields: data,
        files: files,
        headers: {
          HttpHeaders.contentTypeHeader: "multipart/form-data",
          HttpHeaders.cookieHeader: "$accessToken",
        },
        builder: (data) => data,
      );
      // debugPrint("Response from helper post data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data'].toString(),
          ),
        );
      }
      ProductModel productModel = ProductModel.fromJson(response['data']);
      return Right(productModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get product by id
  Future<Either<Failure, ProductModel>> getProduct({required String id}) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getProductEndpoint(id: id),
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        builder: (data) => data,
      );
      // debugPrint("product response: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      ProductModel productModel = ProductModel.fromJson(response['data']);
      return Right(productModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get all [ProductModel]s from the server
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getProductsEndpoint,
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        builder: (data) {
          Map<String, dynamic> responseData = data;
          if (responseData['success']) {
            List<Map<String, dynamic>> respData = [];
            for (Map<String, dynamic> value in responseData['data']) {
              respData.add(value);
            }
            return {
              "data": respData,
              "success": responseData['success'],
            };
          }
          return data;
        },
      );
      // debugPrint("response: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      List<ProductModel> products = <ProductModel>[];
      for (Map<String, dynamic> element in response['data']) {
        ProductModel productModel = ProductModel.fromJson(element);
        // debugPrint("response: $employeeModel");
        products.add(productModel);
      }
      productsController.addProducts(products: products);
      // debugPrint("data : ${productsController.products}");
      return Right(products);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// update product
  Future<Either<Failure, ProductModel>> updateProduct({
    required String id,
    Map<String, dynamic>? data,
    List<PlatformFile>? files,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.multiPartRequest(
        path: ApiEndPoint.updateProductEndpoint(id: id),
        headers: {
          HttpHeaders.contentTypeHeader: "multipart/form-data",
          HttpHeaders.cookieHeader: "$accessToken",
        },
        fields: data,
        files: files,
        builder: (data) => data,
        method: 'PATCH',
      );
      debugPrint("Response from helper post data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'],
          ),
        );
      }
      ProductModel productModel = ProductModel.fromJson(response['data']);
      return Right(productModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// update employee avatar
  Future<Either<Failure, bool>> deleteProduct({
    required String id,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.deleteRequest(
        path: ApiEndPoint.deleteProductEndpoint(id: id),
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        builder: (data) => data,
      );
      // debugPrint("Response from helper post data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }

      /// re-fetch the products
      await getProducts();
      return Right(response['data']);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }
}
