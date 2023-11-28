import 'package:dus_dashboard/index.dart';
import 'package:dus_dashboard/shared/services/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

NotificationService notificationService = NotificationService.instance;
AppStrings appStrings = AppStrings.instance;
AdminRepository adminRepository = AdminRepository.instance;
HelperFunctions helperFunctions = HelperFunctions.instance;

AdminController adminController = AdminController.instance;
AppController appController = AppController.instance;
HttpRequestHelper httpRequestHelper = HttpRequestHelper.instance;
Future<SharedPreferences> sharedPreferences = SharedPreferences.getInstance();
// Create storage
const FlutterSecureStorage storage = FlutterSecureStorage();

ValueNotifier<GraphQLClient> graphqlClient = GraphQLHelper.instance.getClient();
