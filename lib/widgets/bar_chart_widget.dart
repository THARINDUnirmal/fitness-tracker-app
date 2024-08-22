import 'package:fitness_traker_app/data/bar_chart_data.dart';
import 'package:fitness_traker_app/widgets/custom_black_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final barchartData = BarChartDatas();
    return Container(
      child: Column(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: barchartData.chartDatas.length,
            itemBuilder: (context, index) {
              return CustomBlackCard(
                child: Column(
                  children: [
                    Text(" chart data"),
                    AspectRatio(
                      aspectRatio: 10 / 3,
                      child: BarChart(
                        BarChartData(
                          barTouchData: BarTouchData(enabled: true),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
