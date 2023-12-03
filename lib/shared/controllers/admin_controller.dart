import 'package:dartz/dartz.dart' as dartz;
import 'package:dus_dashboard/index.dart';
import 'package:get/get.dart';

class AdminController extends GetxController {
  static AdminController instance = Get.find();

  /// admins is a list of [AdminModel]
  final _admins = <AdminModel>[].obs;

  /// activeAdmin is the current active admin [AdminModel]
  final _activeAdmin = Rxn<AdminModel>();
  final _isAdminLoggedIn = false.obs;

  /// numberOfAdmins is the number of admins [int]
  final _numberOfAdmins = Rx<int>(0);

  // update active [AdminModel]
  void updateAdmin(AdminModel adminModel) {
    _activeAdmin.value = adminModel;
    _isAdminLoggedIn.value = true;
    update();
  }

  /// reset active [AdminModel]
  void resetAdmin() {
    _activeAdmin.value = null;
    _isAdminLoggedIn.value = false;
    update();
  }

  /// fetch all admins [AdminModel]
  void fetchAdmins() async {
    dartz.Either<Failure, List<AdminModel>> response = await AdminRepo.instance.getAdmins();
    response.fold(
      (Failure failure) {
        _admins.value = [];
      },
      (List<AdminModel> admins) {
        _admins.value = admins;
        _numberOfAdmins.value = _admins.length;
      },
    );
    update();
  }

  /// get admin [AdminModel] profile
  void getAdminProfile() async {
    dartz.Either<Failure, AdminModel> response = await AdminRepo.instance.getAdminProfile();
    response.fold(
      (Failure failure) {
        _activeAdmin.value = null;
      },
      (AdminModel adminModel) {
        _activeAdmin.value = adminModel;
      },
    );
    update();
  }

  /// [getters]
  int get numberOfAdmins => _numberOfAdmins.value;
  AdminModel? get activeAdmin => _activeAdmin.value;
  List<AdminModel> get admins => _admins;
  bool get isLoggedIn => _isAdminLoggedIn.value;
}
