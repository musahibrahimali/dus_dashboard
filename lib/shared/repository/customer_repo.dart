import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';

class CustomerRepo {
  CustomerRepo._();

  static final _instance = CustomerRepo._();

  static CustomerRepo get instance => _instance;

  /// update employee avatar
  Future<Either<Failure, bool>> deleteCustomer({
    required String id,
  }) async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.deleteRequest(
        path: ApiEndPoint.deleteCustomerEndPoint(id: id),
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
      return Right(response['data']);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get customer by id
  Future<Either<Failure, CustomerModel>> getCustomer({required String id}) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getEmployeeEndpoint(id: id),
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        builder: (data) => data,
      );
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      CustomerModel customerModel = CustomerModel.fromJson(response['data']);
      return Right(customerModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// Get all customers
  Future<Either<Failure, List<CustomerModel>>> getCustomers() async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getEmployeesEndpoint,
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
      List<CustomerModel> customers = <CustomerModel>[];
      for (Map<String, dynamic> element in response['data']) {
        CustomerModel employeeModel = CustomerModel.fromJson(element);
        // debugPrint("response: $employeeModel");
        customers.add(employeeModel);
      }
      customerController.addCustomers(customers: customers);
      // debugPrint("data : ${employeeController.employees}");
      return Right(customers);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }
}
