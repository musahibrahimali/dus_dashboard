import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ProductsDataSource extends DataGridSource {
  ProductsDataSource({required List<ProductModel> products}) {
    dataGridRows = products
        .map<DataGridRow>(
          (dataGridRow) => DataGridRow(
            cells: <DataGridCell<dynamic>>[
              DataGridCell<String>(columnName: 'id', value: dataGridRow.id),
              DataGridCell<String>(columnName: 'name', value: dataGridRow.name),
              DataGridCell<String>(columnName: 'description', value: dataGridRow.description),
              DataGridCell<String>(columnName: 'class', value: dataGridRow.depo),
              DataGridCell<String>(columnName: 'category', value: dataGridRow.category),
              DataGridCell<String>(columnName: 'brand', value: dataGridRow.brand),
              DataGridCell<int>(columnName: 'number', value: dataGridRow.numInStock),
              DataGridCell<double>(columnName: 'rating', value: dataGridRow.rating),
            ],
          ),
        )
        .toList();
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((dataGridCell) {
        return Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: dataGridCell.columnName == 'rating'
              ? RatingBar.builder(
                  initialRating: double.parse(dataGridCell.value.toString()) <= 0 ? 1 / 2 : double.parse(dataGridCell.value.toString()),
                  minRating: 1 / 2,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemSize: 10.0,
                  itemBuilder: (context, _) => const Icon(
                    LineAwesomeIcons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    debugPrint("rating $rating");
                  },
                )
              : Text(
                  dataGridCell.columnName == 'id' ? dataGridCell.value.toString() : dataGridCell.value.toString().toCapitalized(),
                  overflow: TextOverflow.ellipsis,
                ),
        );
      }).toList(),
    );
  }
}
