import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

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
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5.5),
                  padding: EdgeInsets.all(10),
                  child: Text("Rocket Launches"),
                  decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.blueAccent),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: Offset(6.0, 6.0),
                        )
                      ]),
                ),
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5.5),
                  padding: EdgeInsets.all(10),
                  child: Text("About"),
                  decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.green),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightGreenAccent,
                          offset: Offset(6.0, 6.0),
                        )
                      ]),
                )
              ],
            )));
  }
}
