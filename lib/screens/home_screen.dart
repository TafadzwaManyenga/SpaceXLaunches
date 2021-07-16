import 'package:flutter/material.dart';
import 'package:SpaceX_Launches/screens/about.dart';
import 'package:SpaceX_Launches/screens/basic_data.dart';
import 'package:SpaceX_Launches/screens/sorted_date.dart';
import 'package:SpaceX_Launches/screens/sorted_mission.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SpaceX Launches',
          style: TextStyle(fontFamily: 'transformers', fontSize: 32),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage('assets/rckt.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: OutlinedButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, backgroundColor: Colors.white),
              onPressed: () {},
              child: Text('Launches'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 200,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage('assets/rckt1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, backgroundColor: Colors.white),
              onPressed: () {},
              child: Text('Sort by Mission'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 200,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage('assets/ecl.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text('Sort by Date'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 200,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage('assets/astr.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, backgroundColor: Colors.white),
              onPressed: () {},
              child: Text('Filter by Success'),
            ),
          ),
        ],
      ),


      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text('SpaceX Launches v1.0'),
            ),
            ListTile(
              title: Text('Basic Launch Data'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}