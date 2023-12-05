import 'package:dus_dashboard/index.dart';
import 'package:dus_dashboard/shared/controllers/state_controller.dart';
import 'package:dus_dashboard/shared/services/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// service instances
ServiceInitializers serviceInitializers = ServiceInitializers.instance;
NotificationService notificationService = NotificationService.instance;
AppStrings appStrings = AppStrings.instance;
Validators validators = Validators.instance;

/// helper instances
HelperFunctions helperFunctions = HelperFunctions.instance;
HelperMethods helperMethods = HelperMethods.instance;
HttpRequestHelper httpRequestHelper = HttpRequestHelper.instance;

/// repo instances
AdminRepo adminRepo = AdminRepo.instance;
CustomerRepo customerRepo = CustomerRepo.instance;
EmployeeRepo employeeRepo = EmployeeRepo.instance;
ProductRepo productRepo = ProductRepo.instance;
SalesRepo salesRepo = SalesRepo.instance;

/// controller instances
AdminController adminController = AdminController.instance;
CustomerController customerController = CustomerController.instance;
EmployeeController employeeController = EmployeeController.instance;
ProductsController productsController = ProductsController.instance;
SalesController salesController = SalesController.instance;
AppController appController = AppController.instance;
StateController stateController = StateController.instance;

/// shared preferences
Future<SharedPreferences> sharedPreferences = SharedPreferences.getInstance();

/// Create storage
const FlutterSecureStorage storage = FlutterSecureStorage();
