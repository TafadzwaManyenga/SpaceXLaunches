import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceX Launches',
      theme: ThemeData.dark(
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('SpaceX Launches'),
        ),
        body: Container(
          color: Colors.black,
          child: Text("Rocket Launches"),
        ),
      ),
    );
  }
}
