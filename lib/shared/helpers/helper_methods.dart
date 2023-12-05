import 'package:dartz/dartz.dart' as dartz;
import 'package:dus_dashboard/index.dart';
import 'package:file_picker/file_picker.dart';

class HelperMethods {
  HelperMethods._();

  static final _instance = HelperMethods._();
  static HelperMethods get instance => _instance;

  /**
   * Admin methods
   * */

  /// register admin
  Future<dartz.Either<Failure, String>> registerAdmin({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String phoneNumber,
    required String displayName,
  }) async {
    Map<String, dynamic> data = {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "password": password,
      "displayName": displayName,
      "phone": phoneNumber,
    };
    dartz.Either<Failure, String> response = await adminRepo.registerAdmin(data: data);
    return response;
  }

  /// login admin
  Future<dartz.Either<Failure, String>> loginAdmin({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> data = {
      "email": email,
      "password": password,
    };
    return await adminRepo.logInAdmin(data: data);
  }

  /// login admin
  Future<dartz.Either<Failure, AdminModel>> getAdminProfile() async {
    return await adminRepo.getAdminProfile();
  }

  /// get all the admins
  Future<dartz.Either<Failure, List<AdminModel>>> getAdmins() async {
    return await adminRepo.getAdmins();
  }

  /// get admin by id
  Future<dartz.Either<Failure, AdminModel>> getAdmin({required String id}) async {
    return await adminRepo.getAdmin(id: id);
  }

  /// delete admin
  Future<dartz.Either<Failure, bool>> deleteAdmin({required String id}) async {
    return await adminRepo.deleteAdmin(id: id);
  }

  /**
   * Employee methods
   * */

  /// get employee with id
  Future<dartz.Either<Failure, EmployeeModel>> createEmployee({
    required String firstName,
    required String lastName,
    required String email,
    required String designation,
    required String phoneNumber,
    PlatformFile? avatar,
  }) async {
    Map<String, dynamic> data = {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "designation": designation,
      "phoneNumber": phoneNumber,
    };
    return await employeeRepo.registerEmployee(
      data: data,
      file: avatar,
    );
  }

  /// get employee with id
  Future<dartz.Either<Failure, EmployeeModel>> updateEmployee({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String designation,
    required String phoneNumber,
  }) async {
    Map<String, dynamic> data = {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "designation": designation,
      "phoneNumber": phoneNumber,
    };
    return await employeeRepo.updateEmployee(data: data, id: id);
  }

  /// clock in employee
  Future<dartz.Either<Failure, EmployeeModel>> clockInEmployee({
    required String id,
  }) async {
    Map<String, dynamic> data = {
      "startTime": DateTime.now().toString(),
    };
    return await employeeRepo.clockInEmployee(data: data, id: id);
  }

  /// clock out employee
  Future<dartz.Either<Failure, EmployeeModel>> clockOutEmployee({
    required String id,
    required String attendanceId,
  }) async {
    Map<String, dynamic> data = {
      "closeTime": DateTime.now().toString(),
    };
    return await employeeRepo.clockOutEmployee(
      data: data,
      id: id,
      attendanceId: attendanceId,
    );
  }

  /// get all the employees
  Future<dartz.Either<Failure, List<EmployeeModel>>> getEmployees() async {
    return await employeeRepo.getEmployees();
  }

  /// get employee with id
  Future<dartz.Either<Failure, EmployeeModel>> getEmployee({required String id}) async {
    return await employeeRepo.getEmployee(id: id);
  }

  /// delete customer with id
  Future<dartz.Either<Failure, bool>> deleteEmployee({required String id}) async {
    return await employeeRepo.deleteEmployee(id: id);
  }

  /**
   * Product methods
   * */
  /// create product
  Future<dartz.Either<Failure, ProductModel>> createProduct({
    required String name,
    required String description,
    required double price,
    required String currency,
    required String depo,
    required String brand,
    required String numberInStock,
    required String category,
    required List<PlatformFile> images,
    List<String>? colors,
    List<String>? sizes,
  }) async {
    Map<String, dynamic> data = {
      "name": name,
      "description": description,
      "price": '{"amount": $price, "currency": "${currency.toString()}"}',
      "depo": depo,
      "category": category,
      "brand": brand,
      "colors": colors,
      "sizes": sizes,
      "numInStock": int.parse(numberInStock),
    };
    dartz.Either<Failure, ProductModel> response = await productRepo.createProduct(
      data: data,
      files: images,
    );
    return response;
  }

  /// update product
  Future<dartz.Either<Failure, ProductModel>> updateProduct({
    required String id,
    String? name,
    String? description,
    double? price,
    String? currency,
    String? depo,
    String? brand,
    String? numberInStock,
    String? category,
    List<PlatformFile>? images,
    List<String>? colors,
    List<String>? sizes,
  }) async {
    Map<String, dynamic> data = {
      "name": name,
      "description": description,
      "price": '{"amount": $price, "currency": "${currency.toString()}"}',
      "depo": depo,
      "category": category,
      "brand": brand,
      "colors": colors,
      "sizes": sizes,
      "numInStock": int.parse(numberInStock ?? "0"),
    };
    dartz.Either<Failure, ProductModel> response = await productRepo.updateProduct(
      id: id,
      data: data,
      files: images,
    );
    // debugPrint("response from helperMethods: $response");
    return response;
  }

  /// get all the products
  Future<dartz.Either<Failure, List<ProductModel>>> getProducts() async {
    return await productRepo.getProducts();
  }

  /// get product with id
  Future<dartz.Either<Failure, ProductModel>> getProduct({required String id}) async {
    return await productRepo.getProduct(id: id);
  }

  /// delete product with id
  Future<dartz.Either<Failure, bool>> deleteProduct({required String id}) async {
    return await productRepo.deleteProduct(id: id);
  }

  /**
   * Customer methods
   * */

  /// get all the customers
  Future<dartz.Either<Failure, List<CustomerModel>>> getCustomers() async {
    return await customerRepo.getCustomers();
  }

  /// get customer with id
  Future<dartz.Either<Failure, CustomerModel>> getCustomer({required String id}) async {
    return await customerRepo.getCustomer(id: id);
  }

  /// delete customer with id
  Future<dartz.Either<Failure, bool>> deleteCustomer({required String id}) async {
    return await customerRepo.deleteCustomer(id: id);
  }

  /**
   * Sales Methods
   * */

  /// create sale
  Future<dartz.Either<Failure, SaleModel>> createSale({
    required String products,
    required int quantity,
    required String currency,
    required double amount,
    required String employee,
  }) async {
    Map<String, dynamic> data = {
      "quantity": quantity.toString(),
      "currency": currency,
      "amount": amount.toString(),
      "employeeId": employee,
      "products": products,
    };
    return await salesRepo.createSale(data: data);
  }

  /// get all sales
  Future<dartz.Either<Failure, List<SaleModel>>> getSales() async {
    return await salesRepo.getSales();
  }

  /// get sale by id
  Future<dartz.Either<Failure, SaleModel>> getSale({
    required String id,
  }) async {
    return await salesRepo.getSaleById(id: id);
  }

  /// update sale
  Future<dartz.Either<Failure, SaleModel>> updateSale({
    required String id,
    List<String>? products,
    String? quantity,
    String? currency,
    String? amount,
    String? employee,
  }) async {
    Map<String, dynamic> data = {
      "quantity": quantity,
      "currency": currency,
      "amount": amount,
      "employeeId": employee,
      "products": products,
    };

    return await salesRepo.updateSale(data: data, id: id);
  }

  /// delete sale
  Future<dartz.Either<Failure, bool>> deleteSale({required String id}) async {
    return await salesRepo.deleteSale(id: id);
  }

  /// get sale for specified [EmployeeModel]
  Future<dartz.Either<Failure, List<SaleModel>>> getEmployeeSales({required String id}) async {
    return await salesRepo.getSalesByEmployee(employeeId: id);
  }

  /// get sale for today
  Future<dartz.Either<Failure, List<SaleModel>>> getTodaySales() async {
    return await salesRepo.getSalesForToday();
  }

  /// get sale for current month
  Future<dartz.Either<Failure, List<SaleModel>>> getThisMonthSales() async {
    return await salesRepo.getSalesForCurrentMonth();
  }

  /// get sale for specified [DateTime]
  Future<dartz.Either<Failure, List<SaleModel>>> getThisDateSales({required DateTime date}) async {
    return await salesRepo.getSalesForDate(date: date);
  }
}
