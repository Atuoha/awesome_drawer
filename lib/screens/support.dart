import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);
  final String title = 'Support';

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
