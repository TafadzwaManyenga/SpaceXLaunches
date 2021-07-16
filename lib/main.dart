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
                    style: TextButton.styleFrom(primary: Colors.black, backgroundColor: Colors.white),
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
                      primary: Colors.black, backgroundColor: Colors.white,
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
                      primary: Colors.black, backgroundColor: Colors.white
                    ),
                    onPressed: () {},
                    child: Text('Filter by Success'),
                  ),
                ),
              ],
            )));
  }
}
