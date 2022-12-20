import 'package:flutter/material.dart';

class DrawerItem {
  final int index;
  final String title;
  final IconData icon;

  DrawerItem({
    required this.title,
    required this.icon,
    required this.index,
  });
}
