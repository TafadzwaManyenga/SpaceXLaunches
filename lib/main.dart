import 'package:flutter/material.dart';
import 'package:SpaceX_Launches/screens/home_screen.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  final appTitle = 'SpaceX Launches';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(title: appTitle),
    );
  }
}


