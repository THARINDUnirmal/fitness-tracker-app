import 'package:fitness_traker_app/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class RightMenu extends StatelessWidget {
  const RightMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PieChartSample(),
      ],
    );
  }
}
