import 'package:fitness_traker_app/constants/colors.dart';
import 'package:fitness_traker_app/data/schedule_data.dart';
import 'package:fitness_traker_app/widgets/custom_black_card.dart';
import 'package:flutter/material.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleData();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "Scheduled",
          style: TextStyle(
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        for (var index = 0; index < data.scheduleModleData.length; index++)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: CustomBlackCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.scheduleModleData[index].title,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        data.scheduleModleData[index].date,
                        style: const TextStyle(
                          fontSize: 18,
                          color: greyColor,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.mark_as_unread,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
