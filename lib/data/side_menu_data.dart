import 'package:fitness_traker_app/models/side_menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final List<SideMenuModel> menuData = [
    SideMenuModel(
      title: "Dashbord",
      menuIcon: Icons.home,
    ),
    SideMenuModel(
      title: "Profile",
      menuIcon: Icons.person,
    ),
    SideMenuModel(
      title: "Exersice",
      menuIcon: Icons.run_circle,
    ),
    SideMenuModel(
      title: "Settings",
      menuIcon: Icons.settings,
    ),
    SideMenuModel(
      title: "History",
      menuIcon: Icons.history,
    ),
    SideMenuModel(
      title: "SignOut",
      menuIcon: Icons.logout,
    )
  ];
}
