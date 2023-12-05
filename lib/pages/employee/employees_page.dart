import 'package:dartz/dartz.dart' as dartz;
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class EmployeesPage extends StatefulWidget {
  const EmployeesPage({super.key});

  @override
  State<EmployeesPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<EmployeesPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _showListView = true;
  bool _showOverview = true;
  bool _showAddEmployeeForm = false;

  @override
  void initState() {
    _showOverview = true;
    _showAddEmployeeForm = false;
    _showListView = false;

    helperMethods.getEmployees();
    employeeController.resetActiveAdmin();

    super.initState();
  }

  @override
  void dispose() {
    _showAddEmployeeForm = false;
    _showListView = false;
    _showOverview = true;
    employeeController.resetEmployeeList();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;

    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (adminController.isLoggedIn && adminController.activeAdmin != null) {
            setState(() {
              _showListView = false;
              _showAddEmployeeForm = true;
              _showOverview = false;
            });
          } else {
            /// if user is not an admin or not logged in
            /// redirect to admin auth page
            const AdminAuthRoute().go(context);
          }
        },
        backgroundColor: brandColors.brandSurface,
        child: Icon(
          LineAwesomeIcons.plus,
          size: 30.0,
          color: brandColors.onBrandSurface,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            /// header
            Obx(
              () => Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  color: brandColors.brandSurface?.withOpacity(0.8),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5.0,
                      spreadRadius: 5.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: CustomTimePalette(
                        bgColor: brandColors.brandSurface,
                      ),
                    ),

                    /// add a search box
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 0.0,
                        ),
                        child: TextFormField(
                          controller: employeeController.searchTextController,
                          onChanged: (String value) {
                            employeeController.filterEmployees(value);
                          },
                          cursorColor: brandColors.onBrandSurface,
                          keyboardType: TextInputType.text,
                          style: GoogleFonts.poppins(
                            color: brandColors.onBrandSurface,
                            fontSize: 16.0,
                          ),
                          decoration: InputDecoration(
                            hintText: "Search...",
                            hintStyle: GoogleFonts.poppins(
                              color: brandColors.onBrandSurface!.withOpacity(0.5),
                              fontSize: 16.0,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 10.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.white24,
                                width: 1.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.white24,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.white24,
                                width: 1.0,
                              ),
                            ),
                            suffixIcon: Icon(
                              LineAwesomeIcons.search,
                              color: brandColors.onBrandSurface!.withOpacity(0.5),
                            ),
                            // change the cursor color
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Tooltip(
                        message: "Select employee to check in",
                        child: EmployeeDropDownButton(items: employeeController.employees),
                      ),
                    ),

                    const Gap(20.0),

                    if (employeeController.activeEmployee != null)
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            /// clock in clock out buttons
                            /// clock in button
                            CustomButton(
                              text: "clock in",
                              buttonColor: brandColors.brandSurface,
                              fontSize: 18.0,
                              width: 120.0,
                              onPressed: () async {
                                if (employeeController.selectedEmployee == null) {
                                  notificationService.showInfoNotification(
                                    context: context,
                                    title: "Info",
                                    message: "No Employee Selected",
                                  );
                                } else {
                                  dartz.Either<Failure, EmployeeModel> response = await helperMethods.clockInEmployee(
                                    id: employeeController.selectedEmployee!.id.toString(),
                                  );
                                  employeeController.updateClockedInForToday(state: true);
                                  employeeController.resetSelectedEmployeeName();
                                  if (!mounted) return;
                                  response.fold(
                                    (Failure failure) {
                                      notificationService.showInfoNotification(
                                        context: context,
                                        title: "Info",
                                        message: "There was an error clocking you in",
                                      );
                                    },
                                    (EmployeeModel model) {
                                      const SalesRoute().go(context);
                                      notificationService.showSuccessNotification(
                                        context: context,
                                        title: "Success",
                                        message: "Clocked in successful",
                                      );
                                    },
                                  );
                                }
                                await helperMethods.getEmployees();
                              },
                            ),

                            const Gap(10.0),

                            /// clock out button
                            CustomButton(
                              width: 120.0,
                              fontSize: 18.0,
                              text: "clock out",
                              buttonColor: Colors.redAccent,
                              onPressed: () async {
                                if (employeeController.selectedEmployee == null) {
                                  notificationService.showInfoNotification(
                                    context: context,
                                    title: "Info",
                                    message: "No Employee Selected",
                                  );
                                } else {
                                  AttendanceModel? todayAttendance = employeeController.getTodayAttendance(
                                    employeeId: employeeController.selectedEmployee!.id,
                                  );
                                  dartz.Either<Failure, EmployeeModel> response = await helperMethods.clockOutEmployee(
                                    id: employeeController.selectedEmployee!.id.toString(),
                                    attendanceId: todayAttendance?.id ?? "",
                                  );
                                  if (!mounted) return;
                                  response.fold(
                                    (Failure failure) {
                                      notificationService.showErrorNotification(
                                        context: context,
                                        title: "Error",
                                        message: failure.message.toString(),
                                      );
                                    },
                                    (EmployeeModel employee) {
                                      const SalesRoute().go(context);
                                      employeeController.resetTodayAttendance();
                                      notificationService.showSuccessNotification(
                                        context: context,
                                        title: "Success",
                                        message: "${employeeController.selectedEmployee!.firstName} Clocked Out",
                                      );
                                    },
                                  );
                                }
                                employeeController.resetEmployeeList();
                                await helperMethods.getEmployees();
                              },
                            ),
                          ],
                        ),
                      ),

                    /// container on the right side of the app bar
                    Row(
                      children: <Widget>[
                        /// list view icon
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _showListView = true;
                              _showOverview = false;
                              _showAddEmployeeForm = false;
                            });
                          },
                          icon: Icon(
                            LineAwesomeIcons.list,
                            size: 30.0,
                            color: brandColors.onBrandSurface,
                          ),
                        ),
                        const Gap(10.0),

                        /// attendance icon
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _showListView = false;
                              _showOverview = true;
                              _showAddEmployeeForm = false;
                            });
                          },
                          icon: Icon(
                            LineAwesomeIcons.calendar_check,
                            size: 30.0,
                            color: brandColors.onBrandSurface,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Gap(10.0),

            /// build page layout
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (_showListView) {
                    return const EmployeesListView();
                  } else if (_showOverview) {
                    return const AttendanceView();
                  } else if (_showAddEmployeeForm) {
                    return const AddEmployeeForm();
                  } else {
                    return const AttendanceView();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
