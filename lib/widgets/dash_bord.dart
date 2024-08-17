import 'package:fitness_traker_app/constants/colors.dart';
import 'package:flutter/material.dart';

class DashBord extends StatefulWidget {
  const DashBord({super.key});

  @override
  State<DashBord> createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(
                    backgroundColor: greyColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
