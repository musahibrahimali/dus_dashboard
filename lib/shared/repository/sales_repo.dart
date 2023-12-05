import 'package:dartz/dartz.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';

class SalesRepo {
  SalesRepo._();

  static final _instance = SalesRepo._();
  static SalesRepo get instance => _instance;

  /// create a new sale record
  Future<Either<Failure, SaleModel>> createSale({
    required Map<String, dynamic> data,
  }) async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.postRequest(
        path: ApiEndPoint.createSaleEndpoint,
        data: data,
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
      // debugPrint("data: ${response['data']}");
      var responseData = response['data'];
      EmployeeModel employeeModel = EmployeeModel(
        id: responseData['employee']['id'],
        firstName: responseData['employee']['firstName'],
        lastName: responseData['employee']['lastName'],
        email: responseData['employee']['email'],
        phoneNumber: responseData['employee']['phoneNumber'],
        designation: responseData['employee']['designation'],
        createdAt: DateTime.parse(responseData['employee']['createdAt']),
        updatedAt: DateTime.parse(responseData['employee']['updatedAt']),
        attendance: [],
      );
      // debugPrint("Employee: $employeeModel");
      SaleModel sale = SaleModel(
        id: responseData['id'],
        employee: employeeModel,
        employeeId: responseData['employeeId'],
        products: List<String>.from(responseData['products']),
        quantity: int.parse(responseData['quantity']),
        amount: double.parse(responseData['amount']),
        currency: responseData['currency'],
        createdAt: DateTime.parse(responseData['createdAt']),
        updatedAt: DateTime.parse(responseData['updatedAt']),
      );
      debugPrint("Sale created: $sale");
      return Right(sale);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get all sales
  Future<Either<Failure, List<SaleModel>>> getSales() async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getSalesEndpoint,
        builder: (data) => data,
      );
      // debugPrint("Response from helper get data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      List<SaleModel> sales = [];
      response['data'].forEach((sale) {
        EmployeeModel employeeModel = EmployeeModel(
          id: sale['employee']['id'],
          firstName: sale['employee']['firstName'],
          lastName: sale['employee']['lastName'],
          email: sale['employee']['email'],
          phoneNumber: sale['employee']['phoneNumber'],
          designation: sale['employee']['designation'],
          createdAt: DateTime.parse(sale['employee']['createdAt']),
          updatedAt: DateTime.parse(sale['employee']['updatedAt']),
          attendance: [],
        );
        sales.add(
          SaleModel(
            id: sale['id'],
            employee: employeeModel,
            employeeId: sale['employeeId'],
            products: List<String>.from(sale['products']),
            quantity: int.parse(sale['quantity']),
            amount: double.parse(sale['amount']),
            currency: sale['currency'],
            createdAt: DateTime.parse(sale['createdAt']),
            updatedAt: DateTime.parse(sale['updatedAt']),
          ),
        );
      });
      salesController.addSales(sales: sales);
      return Right(sales);
    } catch (e) {
      debugPrint("Error from all sales : ${e.toString()}");
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get sales by id
  Future<Either<Failure, SaleModel>> getSaleById({
    required String id,
  }) async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getSaleEndpoint(id: id),
        builder: (data) => data,
      );
      debugPrint("Response from helper get data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      var responseData = response['data'];
      EmployeeModel employeeModel = EmployeeModel(
        id: responseData['employee']['id'],
        firstName: responseData['employee']['firstName'],
        lastName: responseData['employee']['lastName'],
        email: responseData['employee']['email'],
        phoneNumber: responseData['employee']['phoneNumber'],
        designation: responseData['employee']['designation'],
        createdAt: DateTime.parse(responseData['employee']['createdAt']),
        updatedAt: DateTime.parse(responseData['employee']['updatedAt']),
        attendance: [],
      );
      // debugPrint("Employee: $employeeModel");
      SaleModel sale = SaleModel(
        id: responseData['id'],
        employee: employeeModel,
        employeeId: responseData['employeeId'],
        products: List<String>.from(responseData['products']),
        quantity: int.parse(responseData['quantity']),
        amount: double.parse(responseData['amount']),
        currency: responseData['currency'],
        createdAt: DateTime.parse(responseData['createdAt']),
        updatedAt: DateTime.parse(responseData['updatedAt']),
      );
      return Right(sale);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// update a sale record
  Future<Either<Failure, SaleModel>> updateSale({
    required Map<String, dynamic> data,
    required String id,
  }) async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.putRequest(
        path: ApiEndPoint.updateSaleEndpoint(id: id),
        data: data,
        builder: (data) => data,
      );
      debugPrint("Response from helper put data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      return Right(SaleModel.fromJson(response['data']));
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// delete a sale record
  Future<Either<Failure, bool>> deleteSale({
    required String id,
  }) async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.deleteRequest(
        path: ApiEndPoint.deleteSaleEndpoint(id: id),
        builder: (data) => data,
      );
      debugPrint("Response from helper delete data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      return const Right(true);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get sales by an employee
  Future<Either<Failure, List<SaleModel>>> getSalesByEmployee({
    required String employeeId,
  }) async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getSaleByEmployeeEndpoint(id: employeeId),
        builder: (data) => data,
      );
      // debugPrint("Response from helper get data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      List<SaleModel> sales = <SaleModel>[];
      response['data'].forEach((sale) {
        EmployeeModel employeeModel = EmployeeModel(
          id: sale['employee']['id'],
          firstName: sale['employee']['firstName'],
          lastName: sale['employee']['lastName'],
          email: sale['employee']['email'],
          phoneNumber: sale['employee']['phoneNumber'],
          designation: sale['employee']['designation'],
          createdAt: DateTime.parse(sale['employee']['createdAt']),
          updatedAt: DateTime.parse(sale['employee']['updatedAt']),
          attendance: [],
        );
        sales.add(
          SaleModel(
            id: sale['id'],
            employee: employeeModel,
            employeeId: sale['employeeId'],
            products: List<String>.from(sale['products']),
            quantity: int.parse(sale['quantity']),
            amount: double.parse(sale['amount']),
            currency: sale['currency'],
            createdAt: DateTime.parse(sale['createdAt']),
            updatedAt: DateTime.parse(sale['updatedAt']),
          ),
        );
      });
      return Right(sales);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get all sales for today
  Future<Either<Failure, List<SaleModel>>> getSalesForToday() async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getSalesEndpoint,
        builder: (data) => data,
      );
      // debugPrint("Response from helper get data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      List<SaleModel> sales = <SaleModel>[];
      response['data'].forEach((sale) {
        /// if the createdAt field is the same as today's date
        if (DateTime.parse(sale['createdAt']).day == DateTime.now().day) {
          EmployeeModel employeeModel = EmployeeModel(
            id: sale['employee']['id'],
            firstName: sale['employee']['firstName'],
            lastName: sale['employee']['lastName'],
            email: sale['employee']['email'],
            phoneNumber: sale['employee']['phoneNumber'],
            designation: sale['employee']['designation'],
            createdAt: DateTime.parse(sale['employee']['createdAt']),
            updatedAt: DateTime.parse(sale['employee']['updatedAt']),
            attendance: [],
          );
          sales.add(
            SaleModel(
              id: sale['id'],
              employee: employeeModel,
              employeeId: sale['employeeId'],
              products: List<String>.from(sale['products']),
              quantity: int.parse(sale['quantity']),
              amount: double.parse(sale['amount']),
              currency: sale['currency'],
              createdAt: DateTime.parse(sale['createdAt']),
              updatedAt: DateTime.parse(sale['updatedAt']),
            ),
          );
        }
      });
      return Right(sales);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get all sales for the current month
  Future<Either<Failure, List<SaleModel>>> getSalesForCurrentMonth() async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getSalesEndpoint,
        builder: (data) => data,
      );
      // debugPrint("Response from helper get data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      List<SaleModel> sales = <SaleModel>[];
      response['data'].forEach((sale) {
        /// if the createdAt field is the same as today's date
        if (DateTime.parse(sale['createdAt']).month == DateTime.now().month) {
          EmployeeModel employeeModel = EmployeeModel(
            id: sale['employee']['id'],
            firstName: sale['employee']['firstName'],
            lastName: sale['employee']['lastName'],
            email: sale['employee']['email'],
            phoneNumber: sale['employee']['phoneNumber'],
            designation: sale['employee']['designation'],
            createdAt: DateTime.parse(sale['employee']['createdAt']),
            updatedAt: DateTime.parse(sale['employee']['updatedAt']),
            attendance: [],
          );
          sales.add(
            SaleModel(
              id: sale['id'],
              employee: employeeModel,
              employeeId: sale['employeeId'],
              products: List<String>.from(sale['products']),
              quantity: int.parse(sale['quantity']),
              amount: double.parse(sale['amount']),
              currency: sale['currency'],
              createdAt: DateTime.parse(sale['createdAt']),
              updatedAt: DateTime.parse(sale['updatedAt']),
            ),
          );
        }
      });
      return Right(sales);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get sales for a specific date
  Future<Either<Failure, List<SaleModel>>> getSalesForDate({
    required DateTime date,
  }) async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getSalesEndpoint,
        builder: (data) => data,
      );
      debugPrint("Response from helper get data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      List<SaleModel> sales = <SaleModel>[];
      response['data'].forEach((sale) {
        /// if the createdAt field is the same as today's date
        if (DateTime.parse(sale['createdAt']).day == date.day) {
          EmployeeModel employeeModel = EmployeeModel(
            id: sale['employee']['id'],
            firstName: sale['employee']['firstName'],
            lastName: sale['employee']['lastName'],
            email: sale['employee']['email'],
            phoneNumber: sale['employee']['phoneNumber'],
            designation: sale['employee']['designation'],
            createdAt: DateTime.parse(sale['employee']['createdAt']),
            updatedAt: DateTime.parse(sale['employee']['updatedAt']),
            attendance: [],
          );
          sales.add(
            SaleModel(
              id: sale['id'],
              employee: employeeModel,
              employeeId: sale['employeeId'],
              products: List<String>.from(sale['products']),
              quantity: int.parse(sale['quantity']),
              amount: double.parse(sale['amount']),
              currency: sale['currency'],
              createdAt: DateTime.parse(sale['createdAt']),
              updatedAt: DateTime.parse(sale['updatedAt']),
            ),
          );
        }
      });
      return Right(sales);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }
}
