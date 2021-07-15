import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to SXL',
      theme: ThemeData.dark(
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to SXL'),
        ),
        body: const Center(
          child: Text('Hello Universe'),
        ),
      ),
    );
  }
}
