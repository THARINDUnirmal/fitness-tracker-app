import 'package:fitness_traker_app/data/pie_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample extends StatelessWidget {
  const PieChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    final piechartData = PieChartSampleData();
    return SizedBox(
      height: 200,
      child: PieChart(
        PieChartData(
          centerSpaceRadius: 70,
          sections: piechartData.chartSampleData,
          sectionsSpace: 0,
          startDegreeOffset: -90,
        ),
      ),
    );
  }
}
