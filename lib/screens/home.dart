import 'package:awesome_drawer/screens/main.dart';
import 'package:awesome_drawer/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../models/drawer_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    var currentItem = DrawerItems.drawerItems[0];

    return Scaffold(
      backgroundColor: Colors.teal,
      body: ZoomDrawer(
        style: DrawerStyle.style4,
        menuScreen: MenuScreen(
          currentItem: currentItem,
          onSelectedItem: (DrawerItem item) {
            setState(() {
              currentItem = item;
            });
          },
        ),
        mainScreen: const MainScreen(),
      ),
    );
  }
}
