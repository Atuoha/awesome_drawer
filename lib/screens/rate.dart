import 'package:flutter/material.dart';

import '../widgets/menu_widget.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);
  final String title = 'Rating';

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
