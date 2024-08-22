import 'package:fitness_traker_app/constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSampleData {
  final chartSampleData = [
    PieChartSectionData(
      radius: 20,
      showTitle: false,
      value: 20,
      color: primaryColor,
    ),
    PieChartSectionData(
      color: Colors.amber,
      showTitle: false,
      value: 17,
      radius: 17,
    ),
    PieChartSectionData(
      color: const Color.fromARGB(255, 28, 212, 237),
      showTitle: false,
      value: 17,
      radius: 15,
    ),
    PieChartSectionData(
      color: const Color.fromARGB(255, 65, 255, 7),
      showTitle: false,
      value: 10,
      radius: 10,
    ),
  ];
}
