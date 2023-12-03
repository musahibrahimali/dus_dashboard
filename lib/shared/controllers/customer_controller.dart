import 'package:dus_dashboard/index.dart';
import 'package:get/get.dart';

class CustomerController extends GetxController {
  static final CustomerController _instance = Get.find();
  static CustomerController get instance => _instance;

  final _customers = <CustomerModel>[].obs;

  addCustomer({required CustomerModel customerModel}) {
    _customers.add(customerModel);
  }

  addCustomers({required List<CustomerModel> customers}) {
    resetCustomerList(); // clear the list before we add the user
    _customers.addAll(customers);
  }

  resetCustomerList() {
    _customers.clear();
  }

  List<CustomerModel> get customers => _customers;
  int get numberOfCustomers => _customers.length;
}
