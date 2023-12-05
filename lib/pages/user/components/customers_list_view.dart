import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CustomersListView extends StatefulWidget {
  const CustomersListView({super.key});

  @override
  State<CustomersListView> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersListView> {
  late CustomerDataSource _customerDataSource;
  List<CustomerModel> _customers = <CustomerModel>[];
  late DataGridController _customerDataGridController;

  bool _isCustomerSelected = false;
  String _selectedCustomerId = "";

  @override
  void initState() {
    helperMethods.getEmployees();
    _customers = customerController.customers;
    _customerDataSource = CustomerDataSource(customers: _customers);
    _customerDataGridController = DataGridController();
    _isCustomerSelected = false;
    _selectedCustomerId = "";
    super.initState();
  }

  @override
  void dispose() {
    _customerDataGridController.dispose();
    _customerDataSource.dispose();
    _isCustomerSelected = false;
    _selectedCustomerId = "";
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 5.0,
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
              source: _customerDataSource,
              controller: _customerDataGridController,
              isScrollbarAlwaysShown: true,
              columnWidthMode: ColumnWidthMode.fill,
              gridLinesVisibility: GridLinesVisibility.both,
              headerGridLinesVisibility: GridLinesVisibility.both,
              selectionMode: SelectionMode.single,
              navigationMode: GridNavigationMode.row,
              onSelectionChanged: (_, __) {
                setState(() {
                  if (!_isCustomerSelected) {
                    _isCustomerSelected = true;
                  }
                });
                DataGridRow? selectedRow = _customerDataGridController.selectedRow;
                List<DataGridCell<dynamic>>? cells = selectedRow?.getCells();
                cells?.forEach((DataGridCell<dynamic> cell) {
                  if (cell.columnName == 'id') {
                    // debugPrint("cells : ${cell.value}");
                    setState(() {
                      _selectedCustomerId = cell.value;
                    });
                  }
                });

                /// go to the product details page
                CustomerPageRoute(id: _selectedCustomerId).go(context);
              },
              columns: <GridColumn>[
                GridColumn(
                  columnName: 'avatar',
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Profile'.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        color: brandColors.onBrandSurface,
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
                  columnName: 'phone',
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Contact'.toUpperCase(),
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
      ],
    );
  }
}
