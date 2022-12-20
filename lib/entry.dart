import 'package:awesome_drawer/screens/about.dart';
import 'package:awesome_drawer/screens/home.dart';
import 'package:awesome_drawer/screens/profile.dart';
import 'package:awesome_drawer/screens/rate.dart';
import 'package:awesome_drawer/screens/settings.dart';
import 'package:awesome_drawer/screens/support.dart';
import 'package:awesome_drawer/ui/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'models/drawer_item.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  var currentItem = DrawerItems.drawerItems[0];
  final _pages = const [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen(),
    SupportScreen(),
    AboutScreen(),
    RatingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return Scaffold(
      backgroundColor: Colors.teal,
      body: ZoomDrawer(
        // angle: -20,
        borderRadius: 50,
        showShadow: true,
        slideWidth: MediaQuery.of(context).size.width * 0.6,
        menuScreen: Builder(builder: (context) {
          return MenuScreen(
            currentItem: currentItem,
            onSelectedItem: (DrawerItem item) {
              setState(() {
                currentItem = item;
              });
             // ZoomDrawer.of(context)!.close();   // Uncomment to make drawer close after selection
            },
          );
        }),
        mainScreen: _pages[currentItem.index],
      ),
    );
  }
}
