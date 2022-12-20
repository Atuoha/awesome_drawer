import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  final String title = 'About';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const MenuWidget(),
      ),
      body: Center(
        child: Text(title, style: const TextStyle(fontSize:27),),
      ),
    );
  }
}
