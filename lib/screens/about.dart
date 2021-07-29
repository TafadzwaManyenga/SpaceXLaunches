import 'package:flutter/material.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About"),

        ),
        body: Center(
          child: Text(

            'This app displays information about SpaceX launches with minimal information for the curious minds.',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        )
    );
  }
}