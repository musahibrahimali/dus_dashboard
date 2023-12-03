import 'package:get/get.dart';

class StateController extends GetxController {
  static final StateController _instance = Get.find();
  static StateController get instance => _instance;
}
