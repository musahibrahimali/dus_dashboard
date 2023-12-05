import 'package:dus_dashboard/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomerController extends GetxController {
  static final CustomerController _instance = Get.find();
  static CustomerController get instance => _instance;

  final _customers = <CustomerModel>[].obs;
  final _filteredCustomers = <CustomerModel>[].obs;
  final TextEditingController _searchTextController = TextEditingController();

  addCustomer({required CustomerModel customerModel}) {
    _customers.add(customerModel);
  }

  addCustomers({required List<CustomerModel> customers}) {
    resetCustomerList(); // clear the list before we add the user
    _customers.addAll(customers);
    _filteredCustomers.addAll(customers);
  }

  resetCustomerList() {
    _customers.clear();
  }

  suspendCustomer({required CustomerModel customer}) {
    ///

    update();
  }

  deleteCustomer(BuildContext context, {required CustomerModel customer}) async {
    ///
    var response = await helperMethods.deleteCustomer(id: customer.id);
    response.fold(
      (Failure l) => notificationService.showErrorNotification(
        context: context,
        title: "Error",
        message: l.message.toString(),
      ),
      (bool r) => notificationService.showSuccessNotification(
        context: context,
        title: "Success",
        message: "Customer Deleted Successfully",
      ),
    );
    update();
  }

  void filterCustomers(String value) {
    if (value.isEmpty) {
      _filteredCustomers.value = _customers.toList();
    } else {
      _filteredCustomers.value = _customers
          .where((customer) => customer.firstName.contains(value))
          .where(
            (customer) => customer.lastName.contains(value),
          )
          .toList();
    }
    update();
  }

  /// get customer by id
  CustomerModel? getCustomer({required String id}) {
    return _customers.firstWhere((element) => element.id == id);
  }

  List<CustomerModel> get customers => _customers;
  List<CustomerModel> get filteredCustomers => _filteredCustomers;
  int get numberOfCustomers => _customers.length;
  TextEditingController get searchTextController => _searchTextController;
}
