class ApiEndPoint {
  ApiEndPoint._();

  /// home endpoint
  static String get homeEndPoint => 'http://localhost:5000';
  // static String get baseUrlEndPoint => 'http://localhost:5000/api';

  /// base api endpoint
  static String get baseEndPoint => '$homeEndPoint/v1';

  /// customers api endpoints
  static String get customersBaseEndPoint => '$baseEndPoint/customer';
  static String get registerCustomerEndPoint => '$customersBaseEndPoint/register';
  static String get loginCustomerEndPoint => '$customersBaseEndPoint/login';
  static String get getCustomersEndPoint => '$customersBaseEndPoint/customers';
  static String get profileCustomerEndPoint => '$customersBaseEndPoint/profile';
  static String get logoutCustomerEndPoint => '$customersBaseEndPoint/logout';
  static String updateCustomerEndPoint({required id}) => '$customersBaseEndPoint/update/$id';
  static String deleteAvatarCustomerEndPoint({required id}) => '$customersBaseEndPoint/delete-avatar/$id';
  static String deleteCustomerEndPoint({required id}) => '$customersBaseEndPoint/delete/$id';

  /// admin api endpoints
  static String get adminBaseEndPoint => '$baseEndPoint/admin';
  static String get registerAdminEndPoint => '$adminBaseEndPoint/register';
  static String get loginAdminEndPoint => '$adminBaseEndPoint/login';
  static String get getAdminsEndPoint => '$adminBaseEndPoint/admins';
  static String get profileAdminEndPoint => '$adminBaseEndPoint/profile';
  static String get logoutAdminEndPoint => '$adminBaseEndPoint/logout';
  static String updateAdminEndPoint({required String id}) => '$adminBaseEndPoint/update/$id';
  static String deleteAvatarAdminEndPoint({required String id}) => '$adminBaseEndPoint/delete-avatar/$id';
  static String deleteAdminEndPoint({required String id}) => '$adminBaseEndPoint/delete/$id';

  /// products api endpoints
  static String get productBaseEndPoint => '$baseEndPoint/product';
  static String get createProductEndpoint => '$productBaseEndPoint/create';
  static String get getProductsEndpoint => '$productBaseEndPoint/products';
  static String getProductEndpoint({required String id}) => '$productBaseEndPoint/$id';
  static String getProductWithNameEndpoint({required String name}) => '$productBaseEndPoint/$name';
  static String updateProductEndpoint({required String id}) => '$productBaseEndPoint/product/$id';
  static String deleteProductEndpoint({required String id}) => '$productBaseEndPoint/product/$id';
  static String addProductImageEndpoint({required String id, required dynamic image}) => '$productBaseEndPoint/$id/$image';

  /// employee api endpoints
  static String get employeeBaseEndPoint => '$baseEndPoint/employee';
  static String get createEmployeeEndpoint => '$employeeBaseEndPoint/create';
  static String get getEmployeesEndpoint => '$employeeBaseEndPoint/employees';
  static String get employeesAttendanceEndpoint => '$employeeBaseEndPoint/attendance';
  static String getEmployeeEndpoint({required String id}) => '$employeeBaseEndPoint/employee/$id';
  static String updateEmployeeEndpoint({required String id}) => '$employeeBaseEndPoint/update/$id';
  static String clockInEmployeeEndpoint({required String id}) => '$employeeBaseEndPoint/clock-in/$id';
  static String clockOutEmployeeEndpoint({required String id, required String id1}) => '$employeeBaseEndPoint/clock-out/$id/$id1';
  static String employeeAttendanceEndpoint({required String id}) => '$employeeBaseEndPoint/attendance/$id';
  static String updateAvatarEmployeeEndpoint({required String id}) => '$employeeBaseEndPoint/update-avatar/$id';
  static String deleteAvatarEmployeeEndpoint({required String id}) => '$employeeBaseEndPoint/delete-avatar/$id';
  static String deleteEmployeeEndpoint({required String id}) => '$employeeBaseEndPoint/delete/$id';
  static String addEmployeeImageEndpoint({required String id, required dynamic image}) => '$employeeBaseEndPoint/product/$id/$image';
}
