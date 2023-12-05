import 'package:cached_network_image/cached_network_image.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CustomerDataSource extends DataGridSource {
  CustomerDataSource({required List<CustomerModel> customers}) {
    dataGridRows = customers
        .map<DataGridRow>(
          (dataGridRow) => DataGridRow(
            cells: <DataGridCell<dynamic>>[
              DataGridCell<String>(columnName: 'avatar', value: dataGridRow.avatar),
              DataGridCell<String>(columnName: 'id', value: dataGridRow.id),
              DataGridCell<String>(columnName: 'firstName', value: dataGridRow.firstName),
              DataGridCell<String>(columnName: 'lastName', value: dataGridRow.lastName),
              DataGridCell<String>(columnName: 'email', value: dataGridRow.email),
              DataGridCell<String>(columnName: 'phone', value: dataGridRow.phone),
            ],
          ),
        )
        .toList();
  }

  List<DataGridRow> dataGridRows = <DataGridRow>[];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: dataGridCell.columnName == 'avatar'
            ? ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: CachedNetworkImage(
                  width: 28.0,
                  height: 28.0,
                  imageUrl: dataGridCell.value,
                  fit: BoxFit.cover,
                  placeholder: (BuildContext context, String url) => Container(
                    width: 28.0,
                    height: 28.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.imagesAccount),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  errorWidget: (BuildContext context, String url, dynamic dynamic) {
                    return Container(
                      width: 28.0,
                      height: 28.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Assets.imagesAccount),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              )
            : Text(
                dataGridCell.value.toString(),
                overflow: TextOverflow.ellipsis,
              ),
      );
    }).toList());
  }
}
