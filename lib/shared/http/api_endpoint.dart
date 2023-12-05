import 'package:dus_dashboard/index.dart';

class ApiEndPoint {
  ApiEndPoint._();

  /// home endpoint
  // static String get _homeEndPoint => 'http://localhost:5000';
  static String get _homeEndPoint => 'https://api.dynastyurbanstyle.com';
  static String get baseUrl => _homeEndPoint;
  // static String get baseUrlEndPoint => 'http://localhost:5000/api';

  /// base api endpoint
  static String get _baseEndPoint => '$_homeEndPoint/v1';

  /// [CustomerModel]s api endpoints
  static String get _customersBaseEndPoint => '$_baseEndPoint/customer';
  static String get registerCustomerEndPoint => '$_customersBaseEndPoint/register';
  static String get loginCustomerEndPoint => '$_customersBaseEndPoint/login';
  static String get getCustomersEndPoint => '$_customersBaseEndPoint/customers';
  static String get profileCustomerEndPoint => '$_customersBaseEndPoint/profile';
  static String get logoutCustomerEndPoint => '$_customersBaseEndPoint/logout';
  static String updateCustomerEndPoint({required id}) => '$_customersBaseEndPoint/update/$id';
  static String deleteAvatarCustomerEndPoint({required id}) => '$_customersBaseEndPoint/delete-avatar/$id';
  static String deleteCustomerEndPoint({required id}) => '$_customersBaseEndPoint/delete/$id';

  /// [AdminModel]s api endpoints
  static String get _adminBaseEndPoint => '$_baseEndPoint/admin';
  static String get registerAdminEndPoint => '$_adminBaseEndPoint/register';
  static String get loginAdminEndPoint => '$_adminBaseEndPoint/login';
  static String get getAdminsEndPoint => '$_adminBaseEndPoint/admins';
  static String get profileAdminEndPoint => '$_adminBaseEndPoint/profile';
  static String get logoutAdminEndPoint => '$_adminBaseEndPoint/logout';
  static String updateAdminEndPoint({required String id}) => '$_adminBaseEndPoint/update/$id';
  static String deleteAvatarAdminEndPoint({required String id}) => '$_adminBaseEndPoint/delete-avatar/$id';
  static String deleteAdminEndPoint({required String id}) => '$_adminBaseEndPoint/delete/$id';

  /// [ProductModel]s api endpoints
  static String get _productBaseEndPoint => '$_baseEndPoint/product';
  static String get createProductEndpoint => '$_productBaseEndPoint/create';
  static String get getProductsEndpoint => '$_productBaseEndPoint/products';
  static String getProductEndpoint({required String id}) => '$_productBaseEndPoint/$id';
  static String getProductWithNameEndpoint({required String name}) => '$_productBaseEndPoint/$name';
  static String updateProductEndpoint({required String id}) => '$_productBaseEndPoint/product/$id';
  static String deleteProductEndpoint({required String id}) => '$_productBaseEndPoint/product/$id';
  static String addProductImageEndpoint({required String id, required dynamic image}) => '$_productBaseEndPoint/$id/$image';

  /// [EmployeeModel]s api endpoints
  static String get _employeeBaseEndPoint => '$_baseEndPoint/employee';
  static String get createEmployeeEndpoint => '$_employeeBaseEndPoint/create';
  static String get getEmployeesEndpoint => '$_employeeBaseEndPoint/employees';
  static String get employeesAttendanceEndpoint => '$_employeeBaseEndPoint/attendance';
  static String getEmployeeEndpoint({required String id}) => '$_employeeBaseEndPoint/employee/$id';
  static String updateEmployeeEndpoint({required String id}) => '$_employeeBaseEndPoint/update/$id';
  static String clockInEmployeeEndpoint({required String id}) => '$_employeeBaseEndPoint/clock-in/$id';
  static String clockOutEmployeeEndpoint({required String id, required String id1}) => '$_employeeBaseEndPoint/clock-out/$id/$id1';
  static String employeeAttendanceEndpoint({required String id}) => '$_employeeBaseEndPoint/attendance/employee/$id';
  static String attendanceEndpoint({required String id}) => '$_employeeBaseEndPoint/attendance/$id';
  static String updateAvatarEmployeeEndpoint({required String id}) => '$_employeeBaseEndPoint/update-avatar/$id';
  static String deleteAvatarEmployeeEndpoint({required String id}) => '$_employeeBaseEndPoint/delete-avatar/$id';
  static String deleteEmployeeEndpoint({required String id}) => '$_employeeBaseEndPoint/delete/$id';
  static String addEmployeeImageEndpoint({required String id, required dynamic image}) => '$_employeeBaseEndPoint/product/$id/$image';

  /// [SaleModel] api endpoints
  static String get _saleBaseEndPoint => '$_baseEndPoint/sale';
  static String get createSaleEndpoint => '$_saleBaseEndPoint/create';
  static String get getSalesEndpoint => '$_saleBaseEndPoint/sales';
  static String getSaleEndpoint({required String id}) => '$_saleBaseEndPoint/sale/$id';
  static String updateSaleEndpoint({required String id}) => '$_saleBaseEndPoint/update/$id';
  static String deleteSaleEndpoint({required String id}) => '$_saleBaseEndPoint/delete/$id';
  static String getSaleByEmployeeEndpoint({required String id}) => '$_saleBaseEndPoint/employee/$id';
}
