import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SalesDataSource extends DataGridSource {
  SalesDataSource({required List<SaleModel> sales}) {
    dataGridRows = sales
        .map<DataGridRow>(
          (dataGridRow) => DataGridRow(
            cells: <DataGridCell<dynamic>>[
              DataGridCell<String>(columnName: 'id', value: dataGridRow.id),
              DataGridCell<String>(columnName: 'currency', value: dataGridRow.currency),
              DataGridCell<double>(columnName: 'amount', value: dataGridRow.amount),
              DataGridCell<int>(columnName: 'quantity', value: dataGridRow.quantity),
              DataGridCell<String>(columnName: 'employee', value: dataGridRow.employee.firstName),
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
          child: Text(
            dataGridCell.columnName == 'id' ? dataGridCell.value.toString() : dataGridCell.value.toString().toCapitalized(),
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
    );
  }
}
