import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';

class EmployeeRepo {
  EmployeeRepo._();

  static final _instance = EmployeeRepo._();
  static EmployeeRepo get instance => _instance;

  /// create employee
  Future<Either<Failure, EmployeeModel>> registerEmployee({
    required Map<String, dynamic> data,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.postRequest(
        path: ApiEndPoint.createEmployeeEndpoint,
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        data: data,
        builder: (data) => data,
      );
      // debugPrint("Response from helper post data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response.isEmpty ? "No Data Available" : "No Data Available",
          ),
        );
      }
      EmployeeModel employeeModel = EmployeeModel.fromJson(response['data']);
      return Right(employeeModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// update employee
  Future<Either<Failure, EmployeeModel>> updateEmployee({
    required String id,
    required Map<String, dynamic> data,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.patchRequest(
        path: ApiEndPoint.updateEmployeeEndpoint(id: id),
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        data: data,
        builder: (data) => data,
      );
      // debugPrint("Response from helper post data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'],
          ),
        );
      }
      EmployeeModel employeeModel = EmployeeModel.fromJson(response['data']);
      return Right(employeeModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// update clock in employee
  Future<Either<Failure, EmployeeModel>> clockInEmployee({
    required String id,
    required Map<String, dynamic> data,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.patchRequest(
        path: ApiEndPoint.clockInEmployeeEndpoint(id: id),
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        data: data,
        builder: (data) => data,
      );
      // debugPrint("data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'],
          ),
        );
      }
      EmployeeModel employeeModel = EmployeeModel.fromJson(response['data']);
      return Right(employeeModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// clock out employee
  Future<Either<Failure, EmployeeModel>> clockOutEmployee({
    required String id,
    required String attendanceId,
    required Map<String, dynamic> data,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.patchRequest(
        path: ApiEndPoint.clockOutEmployeeEndpoint(id: id, id1: attendanceId),
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        data: data,
        builder: (data) => data,
      );
      debugPrint("Response from helper post data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'],
          ),
        );
      }
      EmployeeModel employeeModel = EmployeeModel.fromJson(response['data']);
      return Right(employeeModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// update employee avatar
  Future<Either<Failure, bool>> updateAvatar({
    required String id,
    required Map<String, dynamic> data,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.postRequest(
        path: ApiEndPoint.updateAvatarEmployeeEndpoint(id: id),
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        data: data,
        builder: (data) => data,
      );
      // debugPrint("Response from helper post data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'],
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

  /// update employee avatar
  Future<Either<Failure, bool>> deleteAvatar({
    required String id,
    Map<String, dynamic>? data,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.postRequest(
        path: ApiEndPoint.deleteAvatarEmployeeEndpoint(id: id),
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
      return Right(response['data']);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// update employee avatar
  Future<Either<Failure, bool>> deleteEmployee({
    required String id,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.deleteRequest(
        path: ApiEndPoint.deleteAvatarEmployeeEndpoint(id: id),
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
      return Right(response['data']);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get employee by id
  Future<Either<Failure, EmployeeModel>> getEmployee({required String id}) async {
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
      EmployeeModel employeeModel = EmployeeModel.fromJson(response['data']);
      return Right(employeeModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get all attendance
  Future<Either<Failure, AttendanceModel>> getAllAttendance() async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.employeesAttendanceEndpoint,
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
      AttendanceModel attendanceModel = AttendanceModel.fromJson(response['data']);
      return Right(attendanceModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get attendance
  Future<Either<Failure, AttendanceModel>> getAllAttendanceById({required String id}) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.employeeAttendanceEndpoint(id: id),
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
      AttendanceModel attendanceModel = AttendanceModel.fromJson(response['data']);
      return Right(attendanceModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// Get all employees
  Future<Either<Failure, List<EmployeeModel>>> getEmployees() async {
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
      List<EmployeeModel> employees = <EmployeeModel>[];
      for (Map<String, dynamic> element in response['data']) {
        EmployeeModel employeeModel = EmployeeModel.fromJson(element);
        // debugPrint("response: $employeeModel");
        employees.add(employeeModel);
      }
      employeeController.addEmployees(employees: employees);
      // debugPrint("data : ${employeeController.employees}");
      return Right(employees);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }
}
