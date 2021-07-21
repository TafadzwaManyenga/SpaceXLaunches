import 'package:flutter/material.dart';
import 'package:SpaceX_Launches/data/missions_repo.dart';
import 'package:SpaceX_Launches/models/missions.dart';

class mission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Missions"),
      ),
      body: FutureBuilder<List<Mission>>(
        future: MissionRepository().getMissions(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, i) {
                return Container(
                  child: Center(
                    child: Card(
                      child: ListTile(
                          // tileColor: Colors.blueGrey,
                          title: Text(snapshot.data![i].missionName),
                          subtitle: Text(snapshot.data![i].description)
                      ),
                    ),
                ),
                );
              }
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(
            child: CircularProgressIndicator(),
          );
      }
      ),
    );
  }
}
