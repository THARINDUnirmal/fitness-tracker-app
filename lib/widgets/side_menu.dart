import 'package:fitness_traker_app/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final sideMenuData1 = SideMenuData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sideMenuData1.menuData.length,
      itemBuilder: (context, index) {
        return _sideMenuWidgect(sideMenuData1, index);
      },
    );
  }

  Widget _sideMenuWidgect(SideMenuData sideMenuData1, int index) {
    return Row(
      children: [
        Icon(
          sideMenuData1.menuData[index].menuIcon,
        ),
        Text(
          sideMenuData1.menuData[index].title,
        ),
      ],
    );
  }
}
