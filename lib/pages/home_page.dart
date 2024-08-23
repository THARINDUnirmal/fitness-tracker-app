import 'package:fitness_traker_app/utils/responsive.dart';
import 'package:fitness_traker_app/widgets/dash_bord.dart';
import 'package:fitness_traker_app/widgets/right_menu.dart';
import 'package:fitness_traker_app/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDextop = Responsive.isDextop(context);
    return Scaffold(
      drawer: !isDextop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: const SideMenu(),
            )
          : null,
      endDrawer: !isDextop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const RightMenu(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          //Side Menu

          if (isDextop)
            const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              ),
            ),

          // center dashbord
          const Expanded(
            flex: 7,
            child: SizedBox(
              child: DashBord(),
            ),
          ),

          //right dashbord
          if (isDextop)
            const Expanded(
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
