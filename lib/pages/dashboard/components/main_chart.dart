import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MainChart extends StatelessWidget {
  const MainChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData("Jan", 35, Colors.teal),
      ChartData("Feb", 23, Colors.orange),
      ChartData("Mar", 34, Colors.brown),
      ChartData("Apr", 25, Colors.deepOrange),
      ChartData("May", 40, Colors.purple),
    ];
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      legend: const Legend(
        isVisible: false,
        toggleSeriesVisibility: true,
        position: LegendPosition.bottom,
      ),
      series: <ChartSeries>[
        // Initialize line series
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
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color? color;
}
