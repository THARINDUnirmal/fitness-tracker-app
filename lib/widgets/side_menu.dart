import 'package:fitness_traker_app/constants/colors.dart';
import 'package:fitness_traker_app/constants/constants.dart';
import 'package:fitness_traker_app/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int curuntIndex = 0;
  final sideMenuData1 = SideMenuData();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefalltPadding),
      child: ListView.builder(
        itemCount: sideMenuData1.menuData.length,
        itemBuilder: (context, index) {
          return _sideMenuWidgect(sideMenuData1, index);
        },
      ),
    );
  }

  Widget _sideMenuWidgect(SideMenuData sideMenuData1, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          curuntIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: kDefalltPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          color: curuntIndex == index ? selectionColor : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                sideMenuData1.menuData[index].menuIcon,
                color: curuntIndex == index ? Colors.black : whiteColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                sideMenuData1.menuData[index].title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: curuntIndex == index ? Colors.black : whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
