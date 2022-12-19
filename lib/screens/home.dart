import 'package:awesome_drawer/screens/main.dart';
import 'package:awesome_drawer/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: const ZoomDrawer(

          style: DrawerStyle.style4,
          menuScreen: MenuScreen(),
          mainScreen: MainScreen(),
      ),
    );
  }
}
