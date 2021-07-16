import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SpaceX Launches',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('SpaceX Launches'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    alignment: Alignment.center,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      primary: Colors.black, backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text('Launches'),
                ),),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        primary: Colors.black, backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Text('Sort by Mission'),
                  ),),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        primary: Colors.black, backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Text('Sort by Date'),
                  ),),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        primary: Colors.black, backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Text('Filter by Success'),
                  ),),
              ],
            )));
  }
}
