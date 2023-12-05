import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late ProductsDataSource _productDataSource;
  List<ProductModel> _products = <ProductModel>[];
  late DataGridController _productDataGridController;

  bool _isProductSelected = false;
  String _selectedProductId = "";

  @override
  void initState() {
    helperMethods.getProducts();
    _products = productsController.products;
    _productDataSource = ProductsDataSource(products: _products);
    _productDataGridController = DataGridController();
    _isProductSelected = false;
    _selectedProductId = "";
    super.initState();
  }

  @override
  void dispose() {
    _productDataGridController.dispose();
    _productDataSource.dispose();
    _isProductSelected = false;
    _selectedProductId = "";
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
                controller: _productDataGridController,
                isScrollbarAlwaysShown: true,
                columnWidthMode: ColumnWidthMode.fill,
                gridLinesVisibility: GridLinesVisibility.both,
                headerGridLinesVisibility: GridLinesVisibility.both,
                selectionMode: SelectionMode.single,
                navigationMode: GridNavigationMode.row,
                // showCheckboxColumn: true,
                onSelectionChanged: (_, __) {
                  setState(() {
                    if (!_isProductSelected) {
                      _isProductSelected = true;
                    }
                  });
                  DataGridRow? selectedRow = _productDataGridController.selectedRow;
                  List<DataGridCell<dynamic>>? cells = selectedRow?.getCells();
                  cells?.forEach((DataGridCell<dynamic> cell) {
                    if (cell.columnName == 'id') {
                      // debugPrint("cells : ${cell.value}");
                      setState(() {
                        _selectedProductId = cell.value;
                      });
                    }
                  });

                  /// go to the product details page
                  ProductPageRoute(id: _selectedProductId).go(context);
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
                    columnName: 'name',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Product Name'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'description',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Details'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'class',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Class of Product'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'category',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Category'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'brand',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Brand'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'number',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Number In Stock'.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ),
                  ),
                  GridColumn(
                    columnName: 'rating',
                    label: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Rating'.toUpperCase(),
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
