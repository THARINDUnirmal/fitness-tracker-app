import 'package:fitness_traker_app/widgets/custom_black_card.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBlackCard(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            details(
              key: "Call",
              value: "305",
            ),
            details(
              key: "Steps",
              value: "10983",
            ),
            details(
              key: "Distance",
              value: "7Km",
            ),
            details(
              key: "Sleep",
              value: "7hr",
            ),
          ],
        ),
      ),
    );
  }

  Widget details({required String key, required String value}) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.white,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
