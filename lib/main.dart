import 'package:fitness_traker_app/constants/colors.dart';
import 'package:fitness_traker_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kThemeColor,
      ),
      home: HomePage(),
    );
  }
}
