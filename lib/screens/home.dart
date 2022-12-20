import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: const MenuWidget(),
      ),
      body: const Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 27),
        ),
      ),
    );
  }
}
