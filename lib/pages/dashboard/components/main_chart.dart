import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MainChart extends StatelessWidget {
  const MainChart({super.key});

  @override
  Widget build(BuildContext context) {
    /// chart data
    final List<ChartData> chartData = <ChartData>[
      ChartData(salesController.monthOneName, salesController.monthOneSales, Colors.teal),
      ChartData(salesController.monthTwoName, salesController.monthTwoSales, Colors.orange),
      ChartData(salesController.monthThreeName, salesController.monthThreeSales, Colors.brown),
      ChartData(salesController.monthFourName, salesController.monthFourSales, Colors.deepOrange),
      ChartData(salesController.monthFiveName, salesController.monthFiveSales, Colors.purple),
    ];

    /// main chart
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      legend: const Legend(
        isVisible: false,
        toggleSeriesVisibility: true,
        position: LegendPosition.bottom,
      ),
      series: <ChartSeries>[
        /// Initialize line series
        ColumnSeries<ChartData, String>(
          name: appStrings.monthlySalesChartName,
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          pointColorMapper: (ChartData data, _) => data.color,
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            labelPosition: ChartDataLabelPosition.inside,
          ),
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y,
    this.color,
  );
  final String x;
  final double y;
  final Color? color;
}
