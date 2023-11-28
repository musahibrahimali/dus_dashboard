import 'package:dartz/dartz.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class AdminRepository {
  AdminRepository._();
  static final AdminRepository _instance = AdminRepository._();
  static AdminRepository get instance => _instance;

  static final ValueNotifier<GraphQLClient> client = graphqlClient;

  Future<void> testFetch() async {
    final QueryResult<Query$SayHello> result = await client.value.query$SayHello();
    debugPrint("response: ${result.parsedData?.sayHello.message}");
  }

  /// [createAdmin] is used to create an admin
  Future<Either<Failure, String>> registerAdmin({
    required Map<String, dynamic> variables,
  }) async {
    try {
      QueryResult<Mutation$CreateAdmin> response = await client.value.mutate$CreateAdmin(
        Options$Mutation$CreateAdmin(
          variables: Variables$Mutation$CreateAdmin(
            createAdminInput: Input$CreateAdminInput(
              email: variables['email'],
              firstName: variables['firstName'],
              lastName: variables['lastName'],
              userName: variables['userName'],
              password: variables['password'],
              phone: variables['phone'],
            ),
          ),
        ),
      );
      debugPrint("Response from helper post data: $response");
      if (response.parsedData?.createAdmin.access_token == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      return Right(response.parsedData!.createAdmin.access_token.toString());
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// [loginAdmin] is used to login an admin
  /// this returns a jwt token in [String] format
  Future<Either<Failure, String>> loginAdmin({
    required Map<String, dynamic> variables,
  }) async {
    try {
      QueryResult<Mutation$LoginAdmin> response = await client.value.mutate$LoginAdmin(
        Options$Mutation$LoginAdmin(
          variables: Variables$Mutation$LoginAdmin(
            loginAdminInput: Input$LoginAdminInput(
              email: variables['email'],
              password: variables['password'],
            ),
          ),
        ),
      );
      debugPrint("Response from helper post data: $response");
      if (response.parsedData?.loginAdmin.access_token == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      return Right(response.parsedData!.loginAdmin.access_token.toString());
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get all admins from the server [getAllAdmins]
  Future<Either<Failure, List<AdminModel>>> getAllAdmins() async {
    try {
      QueryResult<Query$GetAdmins> response = await AdminRepository.client.value.query$GetAdmins(
        Options$Query$GetAdmins(),
      );
      debugPrint("response: ${response.parsedData?.getAdmins}");
      if (response.parsedData?.getAdmins == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      Map<String, dynamic> responseData = response.parsedData!.toJson();
      List<AdminModel> admins = responseData.values.map((e) => AdminModel.fromJson(e)).toList();
      return Right(admins);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get admin by profile [getAdminProfile]
  Future<Either<Failure, AdminModel>> getAdminProfile() async {
    try {
      QueryResult<Query$GetAdminProfile> response = await AdminRepository.client.value.query$GetAdminProfile(
        Options$Query$GetAdminProfile(),
      );
      debugPrint("response: ${response.parsedData?.getAdminProfile}");
      if (response.parsedData?.getAdminProfile == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      Map<String, dynamic> data = response.parsedData!.getAdminProfile.toJson();
      return Right(AdminModel.fromJson(data));
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// get admin by id [getAdminById]
  Future<Either<Failure, AdminModel>> getAdminById({
    required String id,
  }) async {
    try {
      QueryResult<Query$GetAdminById> response = await AdminRepository.client.value.query$GetAdminById(
        Options$Query$GetAdminById(
          variables: Variables$Query$GetAdminById(
            getAdminByIdId: id,
          ),
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
      debugPrint("response: ${response.data?['getAdminById']}");
      if (response.data?['getAdminById'] == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      Map<String, dynamic> data = response.parsedData!.getAdminById.toJson();
      return Right(AdminModel.fromJson(data));
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// update admin [updateAdmin]
  Future<Either<Failure, AdminModel>> updateAdmin({
    required Map<String, dynamic> variables,
  }) async {
    try {
      QueryResult<Mutation$UpdateAdmin> response = await AdminRepository.client.value.mutate$UpdateAdmin(
        Options$Mutation$UpdateAdmin(
          variables: Variables$Mutation$UpdateAdmin(
            updateAdminInput: Input$UpdateAdminInput(
              email: variables['email'],
              firstName: variables['firstName'],
              lastName: variables['lastName'],
              userName: variables['userName'],
              phone: variables['phone'],
              role: variables['role'],
              isAdmin: variables['isAdmin'],
            ),
            updateAdminId: variables['id'],
          ),
        ),
      );
      debugPrint("response: ${response.parsedData?.updateAdmin}");
      if (response.parsedData?.updateAdmin == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      Map<String, dynamic> data = response.parsedData!.updateAdmin.toJson();
      return Right(AdminModel.fromJson(data));
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// update admin avatar [updateAdminAvatar]
  Future<Either<Failure, bool>> updateAdminAvatar({
    required Map<String, dynamic> variables,
  }) async {
    try {
      QueryResult<Mutation$UpdateAdminAvatar> response = await AdminRepository.client.value.mutate$UpdateAdminAvatar(
        Options$Mutation$UpdateAdminAvatar(
          variables: Variables$Mutation$UpdateAdminAvatar(
            updateAdminAvatarId: variables['id'],
            avatar: variables['avatar'],
          ),
        ),
      );
      debugPrint("response: ${response.parsedData?.updateAdminAvatar}");
      if (response.parsedData?.updateAdminAvatar == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      return Right(response.parsedData!.updateAdminAvatar);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// delete admin avatar [deleteAdminAvatar]
  Future<Either<Failure, bool>> deleteAdminAvatar({
    required Map<String, dynamic> variables,
  }) async {
    try {
      QueryResult<Mutation$DeleteAdminAvatar> response = await AdminRepository.client.value.mutate$DeleteAdminAvatar(
        Options$Mutation$DeleteAdminAvatar(
          variables: Variables$Mutation$DeleteAdminAvatar(
            deleteAvatarId: variables['id'],
          ),
        ),
      );
      debugPrint("response: ${response.parsedData?.deleteAdminAvatar}");
      if (response.parsedData?.deleteAdminAvatar == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      return Right(response.parsedData!.deleteAdminAvatar);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// logout admin [logoutAdmin]
  Future<Either<Failure, bool>> logoutAdmin() async {
    try {
      QueryResult<Query$LogoutAdmin> response = await AdminRepository.client.value.query$LogoutAdmin(
        Options$Query$LogoutAdmin(),
      );
      debugPrint("response: ${response.parsedData?.logoutAdmin}");
      if (response.parsedData?.logoutAdmin == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      return Right(response.parsedData!.logoutAdmin);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }

  /// delete admin [deleteAdmin]
  Future<Either<Failure, bool>> deleteAdmin({
    required Map<String, dynamic> variables,
  }) async {
    try {
      QueryResult<Mutation$DeleteAdmin> response = await AdminRepository.client.value.mutate$DeleteAdmin(
        Options$Mutation$DeleteAdmin(
          variables: Variables$Mutation$DeleteAdmin(
            deleteAdminId: variables['id'],
          ),
        ),
      );
      debugPrint("response: ${response.parsedData?.deleteAdmin}");
      if (response.parsedData?.deleteAdmin == null) {
        return Left(
          ServerFailure(
            message: response.exception?.graphqlErrors[0].message.toString(),
          ),
        );
      }
      return Right(response.parsedData!.deleteAdmin);
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      return Left(ServerFailure(message: errorMessage));
    }
  }
}
