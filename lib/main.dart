
import 'package:awesome_drawer/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return const MaterialApp(
      // theme: ThemeData.dark(),
      home: HomeScreen()
    );
  }
}
