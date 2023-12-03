import 'package:data_table_2/data_table_2.dart';
import 'package:dus_dashboard/index.dart';
import 'package:dus_dashboard/pages/product/data_source.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  bool _sortAscending = true;
  int? _sortColumnIndex;
  late ProductsDataSource _productsDataSource;
  bool _initialized = false;
  PaginatorController? _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _productsDataSource = ProductsDataSource(context);
      _controller = PaginatorController();
      _initialized = true;
    }
  }

  @override
  void dispose() {
    _productsDataSource.dispose();
    super.dispose();
  }

  List<DataColumn> get _columns {
    return <DataColumn>[
      DataColumn(
        tooltip: 'Product Number',
        label: Text(
          'id'.toUpperCase(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.name, columnIndex, ascending),
      ),
      DataColumn(
        tooltip: 'Product Name',
        label: Text(
          'name'.toUpperCase(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.name, columnIndex, ascending),
      ),
      DataColumn(
        tooltip: 'Product Description',
        label: Text(
          'description'.toUpperCase(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.name, columnIndex, ascending),
      ),
      DataColumn(
        tooltip: 'Product Class',
        label: Text(
          'class'.toUpperCase(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.depo, columnIndex, ascending),
      ),
      DataColumn(
        tooltip: 'Product Category',
        label: Text(
          'category'.toUpperCase(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.category, columnIndex, ascending),
      ),
      DataColumn(
        tooltip: 'Product Brand',
        label: Text(
          'brand'.toUpperCase(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.brand!, columnIndex, ascending),
      ),
      DataColumn(
        tooltip: 'Number in Stock',
        label: Text(
          'Stock'.toUpperCase(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.numInStock.toString(), columnIndex, ascending),
      ),
      DataColumn(
        tooltip: 'Product Rating',
        label: Text(
          'rating'.toUpperCase(),
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        onSort: (columnIndex, ascending) => sort<String>((d) => d.rating.toString(), columnIndex, ascending),
      ),
    ];
  }

  void sort<T>(
    Comparable<T> Function(ProductModel d) getField,
    int columnIndex,
    bool ascending,
  ) {
    _productsDataSource.sort<T>(getField, ascending);
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(bottom: 80.0),
      child: PaginatedDataTable2(
        availableRowsPerPage: const [2, 5, 10, 30, 100],
        horizontalMargin: 20,
        columnSpacing: 0,
        wrapInCard: true,
        renderEmptyRowsInTheEnd: false,
        rowsPerPage: _rowsPerPage,
        minWidth: 800,
        fit: FlexFit.tight,
        onRowsPerPageChanged: (value) {
          _rowsPerPage = value!;
        },
        initialFirstRowIndex: 0,
        onPageChanged: (rowIndex) {
          // print(rowIndex / _rowsPerPage);
        },
        sortColumnIndex: _sortColumnIndex,
        sortAscending: _sortAscending,
        sortArrowAnimationDuration: const Duration(milliseconds: 0),
        controller: _controller,
        hidePaginator: false,
        columns: _columns,
        empty: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey[200],
            child: const Text('No data'),
          ),
        ),
        source: _productsDataSource,
      ),
    );
  }
}
