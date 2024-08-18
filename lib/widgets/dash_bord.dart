import 'package:fitness_traker_app/constants/colors.dart';
import 'package:fitness_traker_app/constants/constants.dart';
import 'package:fitness_traker_app/data/helth_card_data.dart';
import 'package:fitness_traker_app/widgets/custom_black_card.dart';
import 'package:fitness_traker_app/widgets/dashbord_header.dart';
import 'package:fitness_traker_app/widgets/line_chart.dart';
import 'package:flutter/material.dart';

class DashBord extends StatefulWidget {
  const DashBord({super.key});

  @override
  State<DashBord> createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  final helthData = HelthCardData();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kDefalltPadding),
        child: Column(
          children: [
            const DashbordHeader(),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: helthData.helthData.length,
              itemBuilder: (context, index) {
                return CustomBlackCard(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        helthData.helthData[index].cardImageUrl,
                        fit: BoxFit.cover,
                        width: 70,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        helthData.helthData[index].cardValue,
                        style: const TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        helthData.helthData[index].cardTitle,
                        style: TextStyle(
                          fontSize: 16,
                          color: whiteColor.withOpacity(0.6),
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            LineChartDesign(),
          ],
        ),
      ),
    );
  }
}
