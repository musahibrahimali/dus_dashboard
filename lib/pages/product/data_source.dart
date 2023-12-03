import 'package:data_table_2/data_table_2.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProductsDataSource extends DataTableSource {
  ProductsDataSource.empty(this.context) {
    products = <ProductModel>[];
  }

  ProductsDataSource(
    this.context, [
    sortedByPrice = false,
    this.hasRowTaps = false,
    this.hasRowHeightOverrides = false,
    this.hasZebraStripes = false,
  ]) {
    products = _products;
    if (sortedByPrice) {
      sort((ProductModel d) => d.price.amount, true);
    }
  }

  final BuildContext context;
  late List<ProductModel> products;
  bool hasRowTaps = false;
  bool hasRowHeightOverrides = false;
  bool hasZebraStripes = false;

  void sort<T>(Comparable<T> Function(ProductModel d) getField, bool ascending) {
    products.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending ? Comparable.compare(aValue, bValue) : Comparable.compare(bValue, aValue);
    });
    notifyListeners();
  }

  @override
  DataRow getRow(int index, [Color? color]) {
    final product = products[index];
    return DataRow2.byIndex(
      index: index,
      color: color != null
          ? MaterialStateProperty.all(color)
          : (hasZebraStripes && index.isEven ? MaterialStateProperty.all(Theme.of(context).highlightColor) : null),
      cells: <DataCell>[
        DataCell(
          CustomText(
            (index + 1).toString(),
            horizontalMargin: 0,
            verticalMargin: 0,
          ),
        ),
        DataCell(
          CustomText(
            product.name,
            horizontalMargin: 0,
            verticalMargin: 0,
          ),
        ),
        DataCell(
          CustomText(
            product.description,
            horizontalMargin: 0,
            verticalMargin: 0,
          ),
        ),
        DataCell(
          CustomText(
            product.depo,
            horizontalMargin: 0,
            verticalMargin: 0,
          ),
        ),
        DataCell(
          CustomText(
            product.category,
            horizontalMargin: 0,
            verticalMargin: 0,
          ),
        ),
        DataCell(
          CustomText(
            product.brand!,
            horizontalMargin: 0,
            verticalMargin: 0,
          ),
        ),
        DataCell(
          CustomText(
            product.numInStock.toString(),
            horizontalMargin: 0,
            verticalMargin: 0,
          ),
        ),
        DataCell(
          RatingBar.builder(
            initialRating: product.rating!.toDouble(),
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemSize: 15.0,
            itemCount: 5,
            itemBuilder: (context, _) => const Icon(
              LineAwesomeIcons.star,
              color: Colors.amber,
              size: 8.0,
            ),
            onRatingUpdate: (rating) {
              debugPrint(rating.toString());
            },
          ),
        ),
      ],
    );
  }

  @override
  int get rowCount => products.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}

int _selectedCount = 0;

List<ProductModel> _products = productsController.filteredProducts;
