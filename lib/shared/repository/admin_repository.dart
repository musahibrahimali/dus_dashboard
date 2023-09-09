import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class AdminRepository {
  AdminRepository._();
  static final AdminRepository _instance = AdminRepository._();
  static AdminRepository get instance => _instance;

  static final ValueNotifier<GraphQLClient> client = GraphQLHelper.instance.getClient();

  Future<void> testFetch() async {
    final QueryResult<Query$SayHello> result = await client.value.query$SayHello();
    debugPrint("cookies ${result.context.entry<HttpLinkResponseContext>()?.headers}");
    debugPrint("result: ${result.data?['sayHello']['message']}");
  }

  /// [createAdmin] is used to create an admin
  Future<AdminModel?> createAdmin({
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
      if (response.data?['createAdmin'] != null) {
        return AdminModel.fromJson(response.data?['createAdmin']);
      } else {
        final failure = ServerFailure(message: response.data);
        dynamic returnData = {
          "data": failure,
          "success": false,
        };
        return returnData;
      }
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      final failure = ServerFailure(message: errorMessage);
      dynamic returnData = {
        "data": failure,
        "success": false,
      };
      return returnData;
    }
  }

  /// [loginAdmin] is used to login an admin
  Future<AdminModel?> loginAdmin({
    required Map<String, dynamic> variables,
  }) async {
    QueryResult<Mutation$LoginAdmin> response;
    try {
      response = await client.value.mutate$LoginAdmin(
        Options$Mutation$LoginAdmin(
          variables: Variables$Mutation$LoginAdmin(
            loginAdminInput: Input$LoginAdminInput(
              email: variables['email'],
              password: variables['password'],
            ),
          ),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
    //
    // debugPrint("cookies ${response.context.entry<HttpLinkResponseContext>()!.headers?['Set-Cookie']}");
    // debugPrint("cookies ${response.context.entry<HttpLinkResponseContext>()!.headers}");

    debugPrint("response: ${response.data?['loginAdmin']}");

    if (response.data?['loginAdmin'] == null) {
      return AdminModel.fromJson(response.data?['loginAdmin']);
    }
    return null;
  }

  /// get all admins from the server [getAllAdmins]
  Future<List<AdminModel>?> getAllAdmins() async {
    QueryResult<Query$GetAdmins> response;
    try {
      response = await AdminRepository.client.value.query$GetAdmins(
        Options$Query$GetAdmins(
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
      debugPrint("response: ${response.data?['getAdmins']}");
      if (response.data?['getAdmins'] == null) {
        return [];
      }
      return response.data?['getAdmins'].map<AdminModel>((dynamic e) => AdminModel.fromJson(e)).toList();
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  /// get admin by profile [getAdminProfile]
  Future<AdminModel?> getAdminProfile() async {
    QueryResult<Query$GetAdminProfile> response;
    try {
      response = await AdminRepository.client.value.query$GetAdminProfile(
        Options$Query$GetAdminProfile(
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
      debugPrint("response: ${response.data?['getAdminByProfile']}");
      if (response.data?['getAdminByProfile'] == null) {
        return null;
      }
      return AdminModel.fromJson(response.data?['getAdminByProfile']);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  /// get admin by id [getAdminById]
  Future<AdminModel?> getAdminById({
    required String id,
  }) async {
    QueryResult<Query$GetAdminById> response;
    try {
      response = await AdminRepository.client.value.query$GetAdminById(
        Options$Query$GetAdminById(
          variables: Variables$Query$GetAdminById(
            getAdminByIdId: id,
          ),
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
      debugPrint("response: ${response.data?['getAdminById']}");
      if (response.data?['getAdminById'] == null) {
        return null;
      }
      return AdminModel.fromJson(response.data?['getAdminById']);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  /// update admin [updateAdmin]
  Future<bool> updateAdmin({
    required Map<String, dynamic> variables,
  }) async {
    QueryResult<Mutation$UpdateAdmin> response;
    try {
      response = await AdminRepository.client.value.mutate$UpdateAdmin(
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
      debugPrint("response: ${response.data?['updateAdmin']}");
      if (response.data?['updateAdmin'] == null) {
        return false;
      }
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  /// update admin avatar [updateAdminAvatar]
  Future<bool> updateAdminAvatar({
    required Map<String, dynamic> variables,
  }) async {
    QueryResult<Mutation$UpdateAdminAvatar> response;
    try {
      response = await AdminRepository.client.value.mutate$UpdateAdminAvatar(
        Options$Mutation$UpdateAdminAvatar(
          variables: Variables$Mutation$UpdateAdminAvatar(
            updateAdminAvatarId: variables['id'],
            avatar: variables['avatar'],
          ),
        ),
      );
      debugPrint("response: ${response.data?['updateAdminAvatar']}");
      if (response.data?['updateAdminAvatar'] == null) {
        return false;
      }
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  /// delete admin avatar [deleteAdminAvatar]
  Future<bool> deleteAdminAvatar({
    required Map<String, dynamic> variables,
  }) async {
    QueryResult<Mutation$DeleteAdminAvatar> response;
    try {
      response = await AdminRepository.client.value.mutate$DeleteAdminAvatar(
        Options$Mutation$DeleteAdminAvatar(
          variables: Variables$Mutation$DeleteAdminAvatar(
            deleteAvatarId: variables['id'],
          ),
        ),
      );
      debugPrint("response: ${response.data?['deleteAdminAvatar']}");
      if (response.data?['deleteAdminAvatar'] == null) {
        return false;
      }
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  /// logout admin [logoutAdmin]
  Future<bool> logoutAdmin() async {
    QueryResult<Query$LogoutAdmin> response;
    try {
      response = await AdminRepository.client.value.query$LogoutAdmin(
        Options$Query$LogoutAdmin(
          fetchPolicy: FetchPolicy.networkOnly,
        ),
      );
      debugPrint("response: ${response.data?['logoutAdmin']}");
      if (response.data?['logoutAdmin'] == null) {
        return false;
      }
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  /// delete admin [deleteAdmin]
  Future<bool> deleteAdmin({
    required Map<String, dynamic> variables,
  }) async {
    QueryResult<Mutation$DeleteAdmin> response;
    try {
      response = await AdminRepository.client.value.mutate$DeleteAdmin(
        Options$Mutation$DeleteAdmin(
          variables: Variables$Mutation$DeleteAdmin(
            deleteAdminId: variables['id'],
          ),
        ),
      );
      debugPrint("response: ${response.data?['deleteAdmin']}");
      if (response.data?['deleteAdmin'] == null) {
        return false;
      }
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
