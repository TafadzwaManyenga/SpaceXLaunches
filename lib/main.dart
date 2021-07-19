import 'package:flutter/material.dart';
import 'package:SpaceX_Launches/screens/home_screen.dart';

import 'dart:convert';
import 'package:http/http.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final url = "https://api.spacexdata.com/v3/launches";

  var _postsJson = [];

  void fetchPosts() async {
    //Get

    try {
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;

      setState(() {
        _postsJson = jsonData;
      });
    }
    catch (err) {}
  }

  @override
  void initState(){
    super.initState();
    fetchPosts();
  }

  final appTitle = 'SpaceX Launches';

  @override
  Widget build(BuildContext context) {
    // fetchPosts();
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(title: appTitle),
    );

    // return MaterialApp(
    //   title: appTitle,
    //   home: Scaffold(
    //     body: ListView.builder(
    //       itemCount: _postsJson.length,
    //       itemBuilder: (context, i){
    //         final post = _postsJson[i];
    //         return Text("Mission: ${post["mission_name"]}\n");
    //       }
    //     ),
    //   )
    // );
  }
}
