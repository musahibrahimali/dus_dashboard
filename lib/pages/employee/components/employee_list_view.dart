import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class EmployeesListView extends StatefulWidget {
  const EmployeesListView({super.key});

  @override
  State<EmployeesListView> createState() => _EmployeeListViewState();
}

class _EmployeeListViewState extends State<EmployeesListView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late EmployeeDataSource _employeeDataSource;
  List<EmployeeModel> _employees = <EmployeeModel>[];
  bool _isEmployeeSelected = false;
  String _selectedEmployeeId = "";
  late DataGridController _employeeDataGridController;

  @override
  void initState() {
    helperMethods.getEmployees();
    _employees = employeeController.employees;
    _employeeDataSource = EmployeeDataSource(employees: _employees);
    _employeeDataGridController = DataGridController();
    _selectedEmployeeId = "";
    _isEmployeeSelected = false;
    super.initState();
  }

  @override
  void dispose() {
    _employeeDataSource.dispose();
    _employeeDataGridController.dispose();
    _selectedEmployeeId = "";
    _isEmployeeSelected = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 6.0,
          vertical: 5.0,
        ),
        child: SfDataGridTheme(
          data: SfDataGridThemeData(
            headerColor: brandColors.brandSurface,
            headerHoverColor: brandColors.goldContainer?.withOpacity(0.2),
            rowHoverColor: Colors.grey.shade200,
            rowHoverTextStyle: GoogleFonts.poppins(
              color: Colors.grey.shade900,
            ),
          ),
          child: SfDataGrid(
            source: _employeeDataSource,
            controller: _employeeDataGridController,
            allowPullToRefresh: true,
            isScrollbarAlwaysShown: true,
            columnWidthMode: ColumnWidthMode.fill,
            gridLinesVisibility: GridLinesVisibility.both,
            headerGridLinesVisibility: GridLinesVisibility.both,
            selectionMode: SelectionMode.single,
            navigationMode: GridNavigationMode.row,
            frozenRowsCount: 1,
            // showCheckboxColumn: true,
            onSelectionChanged: (_, __) {
              setState(() {
                if (!_isEmployeeSelected) {
                  _isEmployeeSelected = true;
                }
              });
              DataGridRow? selectedRow = _employeeDataGridController.selectedRow;
              List<DataGridCell<dynamic>>? cells = selectedRow?.getCells();
              cells?.forEach((DataGridCell<dynamic> cell) {
                if (cell.columnName == 'id') {
                  // debugPrint("cells : ${cell.value}");
                  setState(() {
                    _selectedEmployeeId = cell.value;
                  });
                }
              });

              /// show the employee details
              EmployeePageRoute(id: _selectedEmployeeId).go(context);
            },
            // rowsPerPage: 10,
            columns: <GridColumn>[
              GridColumn(
                columnName: 'avatar',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Center(
                    child: Text(
                      'Profile'.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        color: brandColors.onBrandSurface,
                      ),
                    ),
                  ),
                ),
              ),
              GridColumn(
                columnName: 'id',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Id'.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      color: brandColors.onBrandSurface,
                    ),
                  ),
                ),
              ),
              GridColumn(
                columnName: 'firstName',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'First Name'.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      color: brandColors.onBrandSurface,
                    ),
                  ),
                ),
              ),
              GridColumn(
                columnName: 'lastName',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Last Name'.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      color: brandColors.onBrandSurface,
                    ),
                  ),
                ),
              ),
              GridColumn(
                columnName: 'email',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email'.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      color: brandColors.onBrandSurface,
                    ),
                  ),
                ),
              ),
              GridColumn(
                columnName: 'designation',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Designation'.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      color: brandColors.onBrandSurface,
                    ),
                  ),
                ),
              ),
              GridColumn(
                columnName: 'startDate',
                label: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Start Date'.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      color: brandColors.onBrandSurface,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
