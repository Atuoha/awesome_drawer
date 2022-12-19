import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
        leading: const MenuWidget(),
      ),
    );
  }
}
