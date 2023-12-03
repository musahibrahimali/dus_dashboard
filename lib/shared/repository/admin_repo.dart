import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';

class AdminRepo {
  AdminRepo._();

  static final _instance = AdminRepo._();
  static AdminRepo get instance => _instance;

  Future<Either<Failure, String>> registerAdmin({
    required Map<String, dynamic> data,
  }) async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.postRequest(
        path: ApiEndPoint.registerAdminEndPoint,
        data: data,
        builder: (data) => data,
      );
      debugPrint("Response from helper post data: $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      return Right(response['data']['access_token'].toString());
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  Future<Either<Failure, String>> logInAdmin({
    required Map<String, dynamic> data,
  }) async {
    try {
      Map<String, dynamic> response = await httpRequestHelper.postRequest(
        path: ApiEndPoint.loginAdminEndPoint,
        data: data,
        builder: (data) => data,
      );
      // debugPrint("response admin login: $response");
      // debugPrint("response admin login: ${response['data']["message"]}");
      if (response['success'] == false) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      // debugPrint("access_token: ${response['data']['access_token']}");
      return Right(response['data']['access_token'].toString());
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  Future<Either<Failure, AdminModel>> updateAdmin({
    required Map<String, dynamic> data,
    required String id,
  }) async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.patchRequest(
        path: ApiEndPoint.updateAdminEndPoint(id: id),
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        data: data,
        builder: (data) => data,
      );
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      return Right(AdminModel.fromJson(response['data']));
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  Future<Either<Failure, AdminModel>> getAdminProfile() async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      // debugPrint("access token >>>> $accessToken");
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.profileAdminEndPoint,
        headers: {
          HttpHeaders.cookieHeader: "$accessToken",
        },
        builder: (data) => data,
      );
      // debugPrint("response $response");
      if (!response['success']) {
        return Left(
          ServerFailure(
            message: response['data']['message'].toString(),
          ),
        );
      }
      AdminModel adminModel = AdminModel.fromJson(response['data']);
      // debugPrint("admin model $adminModel");
      adminController.updateAdmin(adminModel);
      return Right(adminModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get employee by id
  Future<Either<Failure, AdminModel>> getAdmin({required String id}) async {
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
      AdminModel adminModel = AdminModel.fromJson(response['data']);
      return Right(adminModel);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// Get all admins
  Future<Either<Failure, List<AdminModel>>> getAdmins() async {
    try {
      String? accessToken = await helperFunctions.readValue(key: "access_token");
      Map<String, dynamic> response = await httpRequestHelper.getRequest(
        path: ApiEndPoint.getAdminsEndPoint,
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
      List<AdminModel> admins = <AdminModel>[];

      // debugPrint("response: ${response['data']}");
      for (Map<String, dynamic> element in response['data']) {
        AdminModel adminModel = AdminModel.fromJson(element);
        // debugPrint("response: $adminModel");
        admins.add(adminModel);
      }
      // debugPrint("data : ${adminController.admins}");
      return Right(admins);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }
}
