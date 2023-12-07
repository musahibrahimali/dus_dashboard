import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeController extends GetxController {
  static final EmployeeController _instance = Get.find();
  static EmployeeController get instance => _instance;

  final _employees = <EmployeeModel>[].obs;
  final _filteredEmployees = <EmployeeModel>[].obs;
  final _selectedEmployee = Rxn<EmployeeModel>();
  final _activeEmployee = Rxn<EmployeeModel>();
  final _todayAttendance = Rxn<AttendanceModel>();
  final _clockedInForToday = false.obs;
  final List<AttendanceModel> _activeEmployeeThisMonthAttendance = <AttendanceModel>[].obs;
  final TextEditingController _searchTextController = TextEditingController();

  /// change the selected user
  void changeSelectedUser({required EmployeeModel employee}) {
    _selectedEmployee.value = employee;
    _activeEmployee.value = employee;
    update();
  }

  void changeActiveEmployee({required EmployeeModel employee}) {
    _activeEmployee.value = employee;
    update();
  }

  void updateSelectedEmployeeName({String? name}) {
    for (EmployeeModel employee in _employees) {
      if (name == employee.firstName) {
        changeSelectedUser(employee: employee);
      }
    }
  }

  void resetSelectedEmployeeName() {
    _selectedEmployee.value = null;
  }

  updateClockedInForToday({required bool state}) {
    _clockedInForToday.value = state;
  }

  resetClockedInForToday() {
    _clockedInForToday.value = false;
  }

  addEmployee({required EmployeeModel employeeModel}) {
    _employees.add(employeeModel);
  }

  addEmployees({required List<EmployeeModel> employees}) {
    resetEmployeeList(); // clear the list before we add the user
    _activeEmployee.value = null;
    _selectedEmployee.value = null;
    _employees.addAll(employees);
    _filteredEmployees.addAll(employees);
  }

  EmployeeModel? getEmployeeWithId({required String id}) {
    for (EmployeeModel employee in _employees) {
      if (employee.id == id) {
        return employee;
      }
    }
    return null;
  }

  void getEmployeeAttendance({required String id}) {
    for (EmployeeModel employee in _employees) {
      if (employee.id == id) {
        if (employee.attendance.isNotEmpty) {
          for (AttendanceModel attendance in employee.attendance) {
            if (!_activeEmployeeThisMonthAttendance.contains(attendance)) {
              DateTime currentDate = DateTime.now();
              // convert the start time to a date time
              var startTime = DateTime.parse(attendance.startTime!.toString());
              if (currentDate.isSameMonth(startTime)) {
                _activeEmployeeThisMonthAttendance.add(attendance);
              }
            }
          }
        }
      }
    }
  }

  /// get the attendance that is not closed with the same date as today
  AttendanceModel? getTodayAttendance({required String employeeId}) {
    DateTime currentDate = DateTime.now();
    for (AttendanceModel attendance in _activeEmployeeThisMonthAttendance) {
      // convert the start time to a date time
      var startTime = DateTime.parse(attendance.startTime!.toString());
      if (currentDate.isSameDate(startTime)) {
        // check if its closed
        if (attendance.closeTime == null) {
          _todayAttendance.value = attendance;
        }
      }
    }
    return _todayAttendance.value;
  }

  resetTodayAttendance() {
    _todayAttendance.value = null;
  }

  Color getBackgroundColorWithDate({required DateTime date}) {
    if (_activeEmployeeThisMonthAttendance.isNotEmpty) {
      for (AttendanceModel value in _activeEmployeeThisMonthAttendance) {
        // convert the start time to a date time
        var startTime = DateTime.parse(value.startTime!.toString());
        if (date.isSameMonth(startTime)) {
          if (date.isSameDate(startTime)) {
            if (helperFunctions.determineLate(time: startTime) == 1) {
              return Colors.redAccent;
            } else if (helperFunctions.determineLate(time: startTime) == 2) {
              return Colors.yellowAccent;
            } else if (helperFunctions.determineLate(time: startTime) == 3) {
              return Colors.green;
            } else {
              return Colors.white;
            }
          }
        }
      }
    }
    return Colors.white;
  }

  resetEmployeeList() {
    resetSelectedEmployeeName();
    employeeController.resetActiveAdmin();
    _employees.clear();
  }

  resetActiveAdmin() {
    _activeEmployee.value = null;
    _selectedEmployee.value = null;
    update();
  }

  /// get employee with id
  EmployeeModel? getEmployee({required String id}) {
    return _employees.firstWhere((element) => element.id == id);
  }

  /// delete employee
  void deleteEmployee(BuildContext context, {required EmployeeModel employee}) async {
    var response = await helperMethods.deleteCustomer(id: employee.id);
    response.fold(
      (Failure l) => notificationService.showErrorNotification(
        context: context,
        title: "Error",
        message: l.message.toString(),
      ),
      (bool r) => notificationService.showSuccessNotification(
        context: context,
        title: "Success",
        message: "Employee Deleted Successfully",
      ),
    );

    update();
  }

  /// suspend employee
  void suspendEmployee({required EmployeeModel employee}) async {
    update();
  }

  void filterEmployees(String value) {
    if (value.isEmpty) {
      _filteredEmployees.value = _employees.toList();
    } else {
      _filteredEmployees.value = _employees
          .where((employee) => employee.firstName.contains(value))
          .where(
            (employee) => employee.lastName.contains(value),
          )
          .toList();
    }
    update();
  }

  List<EmployeeModel> get employees => _employees;
  List<EmployeeModel> get filteredEmployees => _filteredEmployees;
  int get numberOfEmployees => _employees.length;
  EmployeeModel? get selectedEmployee => _selectedEmployee.value;
  EmployeeModel? get activeEmployee => _activeEmployee.value;
  bool get clockedInForToday => _clockedInForToday.value;
  List<AttendanceModel>? get activeEmployeeThisMonthAttendance => _activeEmployeeThisMonthAttendance;
  TextEditingController get searchTextController => _searchTextController;
}
