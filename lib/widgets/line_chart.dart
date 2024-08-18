import 'package:fitness_traker_app/constants/colors.dart';
import 'package:fitness_traker_app/data/line_chart_data.dart';
import 'package:fitness_traker_app/widgets/custom_black_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartDesign extends StatelessWidget {
  const LineChartDesign({super.key});

  @override
  Widget build(BuildContext context) {
    //line chart data
    final data = LineDataList();

    return CustomBlackCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(
              fontSize: 16,
              color: greyColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(
                  enabled: true,
                ),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return data.bottomTitles[value.toInt()] != null
                            ? Text(
                                data.bottomTitles[value.toInt()].toString(),
                                style: const TextStyle(
                                  color: whiteColor,
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return data.leftTitles[value.toInt()] != null
                            ? Text(
                                data.leftTitles[value.toInt()].toString(),
                                style: const TextStyle(
                                  color: whiteColor,
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    color: selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          selectionColor.withOpacity(0.5),
                          Colors.transparent,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    show: true,
                    dotData: const FlDotData(
                      show: false,
                    ),
                    spots: data.spots,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
