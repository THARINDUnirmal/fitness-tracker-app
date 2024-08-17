import 'package:fitness_traker_app/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          //Side Menu
          Expanded(
            flex: 2,
            child: SizedBox(
              child: SideMenu(),
            ),
          ),

          // center dashbord
          Expanded(
            flex: 7,
            child: SizedBox(
              child: Text(
                "data 2",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          //right dashbord
          Expanded(
            flex: 3,
            child: SizedBox(
              child: Text(
                "data 3",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
