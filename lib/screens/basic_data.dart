import 'package:flutter/material.dart';
import 'package:SpaceX_Launches/data/launches_repo.dart';

import 'package:SpaceX_Launches/models/launches.dart';

class Launches extends StatelessWidget {
  // late Future<Launch> futureLaunch = LaunchRepository().getLaunches();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Launches"),
      ),
      body: FutureBuilder<List<Launch>>(
        future: LaunchRepository().getLaunches(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, i) {
                return Container(
                    child: Center(
                      child: Card(
                          child: ListTile(
                              title: Text(snapshot.data![i].missionName),
                              subtitle: Text(snapshot.data![i].launchYear)
                          ),
                      ),
                ));
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },

        // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: Text('Go back!'),
        // ),
      ),
    );
  }
}
