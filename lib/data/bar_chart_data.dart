import 'package:fitness_traker_app/models/bar_chart_modle1.dart';
import 'package:fitness_traker_app/models/bar_chart_modle2.dart';
import 'package:flutter/material.dart';

class BarChartDatas {
  final chartDatas = [
    BarChartModle1(
      barChartTitle: "Calories Burned",
      barLineColor: const Color.fromARGB(255, 90, 128, 254),
      barSopts: [
        BarChart2(x: 0, y: 8),
        BarChart2(x: 1, y: 10),
        BarChart2(x: 2, y: 7),
        BarChart2(x: 3, y: 4),
        BarChart2(x: 4, y: 4),
        BarChart2(x: 5, y: 6),
      ],
    ),
    BarChartModle1(
      barChartTitle: "Protein",
      barLineColor: const Color.fromARGB(255, 174, 0, 255),
      barSopts: [
        BarChart2(x: 0, y: 8),
        BarChart2(x: 1, y: 10),
        BarChart2(x: 2, y: 9),
        BarChart2(x: 3, y: 6),
        BarChart2(x: 4, y: 6),
        BarChart2(x: 5, y: 7),
      ],
    ),
    BarChartModle1(
      barChartTitle: "Carbs Intake",
      barLineColor: const Color.fromARGB(255, 3, 247, 178),
      barSopts: [
        BarChart2(x: 0, y: 7),
        BarChart2(x: 1, y: 10),
        BarChart2(x: 2, y: 7),
        BarChart2(x: 3, y: 4),
        BarChart2(x: 4, y: 4),
        BarChart2(x: 5, y: 10),
      ],
    )
  ];
}
