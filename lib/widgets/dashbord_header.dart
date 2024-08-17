import 'package:fitness_traker_app/constants/colors.dart';
import 'package:flutter/material.dart';

class DashbordHeader extends StatelessWidget {
  const DashbordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(
              color: Colors.amber,
            ),
            decoration: InputDecoration(
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              fillColor: cardBackgroundColor,
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
                color: greyColor,
              ),
              hintText: "Search Hear...",
              hintStyle: const TextStyle(
                color: greyColor,
              ),
              contentPadding: const EdgeInsets.all(5),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
