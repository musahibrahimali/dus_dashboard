import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SalesListView extends StatefulWidget {
  const SalesListView({super.key});

  @override
  State<SalesListView> createState() => _SalesListViewState();
}

class _SalesListViewState extends State<SalesListView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late SalesDataSource _productDataSource;
  List<SaleModel> _sales = <SaleModel>[];
  late DataGridController _saleDataGridController;

  bool _isSaleSelected = false;
  String _selectedSaleId = "";

  @override
  void initState() {
    helperMethods.getProducts();
    _sales = salesController.sales;
    _productDataSource = SalesDataSource(sales: _sales);
    _saleDataGridController = DataGridController();
    _isSaleSelected = false;
    _selectedSaleId = "";
    super.initState();
  }

  @override
  void dispose() {
    _saleDataGridController.dispose();
    _productDataSource.dispose();
    _isSaleSelected = false;
    _selectedSaleId = "";
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
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
                source: _productDataSource,
                controller: _saleDataGridController,
                isScrollbarAlwaysShown: true,
                columnWidthMode: ColumnWidthMode.fill,
                gridLinesVisibility: GridLinesVisibility.both,
                headerGridLinesVisibility: GridLinesVisibility.both,
                selectionMode: SelectionMode.single,
                navigationMode: GridNavigationMode.row,
                // showCheckboxColumn: true,
                onSelectionChanged: (_, __) {
                  setState(() {
                    if (!_isSaleSelected) {
                      _isSaleSelected = true;
                    }
                  });
                  DataGridRow? selectedRow = _saleDataGridController.selectedRow;
                  List<DataGridCell<dynamic>>? cells = selectedRow?.getCells();
                  cells?.forEach((DataGridCell<dynamic> cell) {
                    if (cell.columnName == 'id') {
                      // debugPrint("cells : ${cell.value}");
                      setState(() {
                        _selectedSaleId = cell.value;
                      });
                    }
                  });

                  /// go to the product details page
                  // ProductPageRoute(id: _selectedSaleId).go(context);
                  debugPrint("selected sale id: $_selectedSaleId");
                },
                columns: <GridColumn>[
                  GridColumn(
                    columnName: 'id',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'id'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'currency',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Currency'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'amount',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Amount'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'quantity',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Number of Products'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'employee',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Employee'.toUpperCase(),
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
      ),
    );
  }
}
