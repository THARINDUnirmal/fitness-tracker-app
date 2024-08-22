import 'package:fitness_traker_app/widgets/dash_bord.dart';
import 'package:fitness_traker_app/widgets/right_menu.dart';
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
              child: DashBord(),
            ),
          ),

          //right dashbord
          Expanded(
            flex: 3,
            child: SizedBox(
              child: RightMenu(),
            ),
          ),
        ],
      )),
    );
  }
}
