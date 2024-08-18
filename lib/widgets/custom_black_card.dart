import 'package:fitness_traker_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomBlackCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? cardColor;

  const CustomBlackCard({
    super.key,
    required this.child,
    this.padding,
    this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardColor ?? cardBackgroundColor,
      ),
      child: child,
    );
  }
}
