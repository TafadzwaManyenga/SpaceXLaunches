import 'package:SpaceX_Launches/screens/success_only.dart';
import 'package:flutter/material.dart';
import 'package:SpaceX_Launches/screens/basic_data.dart';
import 'package:SpaceX_Launches/screens/sorted_date.dart';
import 'package:SpaceX_Launches/screens/sorted_mission.dart';
import 'package:SpaceX_Launches/screens/about.dart';

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Launches()),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Missions()),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dates()),
                );
              },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Successes()),
                );
              },
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
                image: DecorationImage(
                  image: AssetImage('assets/clds.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text('SpaceX Launches v1.0'),
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}