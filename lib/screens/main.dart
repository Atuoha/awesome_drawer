import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome Drawer'),
        leading: const MenuWidget(),
      ),
    );
  }
}
