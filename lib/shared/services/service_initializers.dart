import 'package:dus_dashboard/index.dart';
import 'package:dus_dashboard/shared/controllers/state_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ServiceInitializers {
  ServiceInitializers._();

  static final ServiceInitializers _instance = ServiceInitializers._();
  static ServiceInitializers get instance => _instance;

  Future<void> initializeServices() async {
    await setupDataLayers();
    await setupOrientation();
  }

  Future<void> setupDataLayers() async {
    Get.lazyPut(() => AppController());
    Get.lazyPut(() => AdminController());
    Get.lazyPut(() => CustomerController());
    Get.lazyPut(() => EmployeeController());
    Get.lazyPut(() => ProductsController());
    Get.lazyPut(() => SalesController());
    Get.lazyPut(() => StateController());
  }

  /// orientation setup
  /// Device Orientation Preference
  Future<void> setupOrientation() async {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
  }
}
