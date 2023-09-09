import 'package:dus_dashboard/index.dart';
import 'package:get/get.dart';

class AdminController extends GetxController {
  static AdminController instance = Get.find();

  /// admins is a list of [AdminModel]
  final _admins = <AdminModel>[].obs;

  /// activeAdmin is the current active admin [AdminModel]
  final _activeAdmin = Rxn<AdminModel>();

  /// numberOfAdmins is the number of admins [int]
  final _numberOfAdmins = Rxn<int>(0);

  // update active [AdminModel]
  void updateAdmin(AdminModel adminModel) {
    _activeAdmin.value = adminModel;
    update();
  }

  /// reset active [AdminModel]
  void resetAdmin() {
    _activeAdmin.value = null;
  }

  /// fetch all admins [AdminModel]
  void fetchAdmins() async {
    List<AdminModel>? response = await AdminRepository.instance.getAllAdmins();
    if (response != null) {
      _admins.value = admins;
      _numberOfAdmins.value = _admins.length;
    }
  }

  /// get admin [AdminModel] profile
  void getAdminProfile() async {
    AdminModel? response = await AdminRepository.instance.getAdminProfile();
    if (response != null) {
      _activeAdmin.value = response;
    }
  }

  /// [getters]
  int get numberOfAdmins => _numberOfAdmins.value ?? 0;
  AdminModel? get activeAdmin => _activeAdmin.value;
  List<AdminModel> get admins => _admins;
}
