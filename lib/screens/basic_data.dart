import 'package:flutter/material.dart';
import 'package:SpaceX_Launches/data/launches_repo.dart';
import 'package:SpaceX_Launches/models/launches.dart';
// import 'details.dart';

class Launches extends StatelessWidget {
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
                        subtitle: Text(snapshot.data![i].launchYear),
                        onTap: () {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text(snapshot.data![i].details),
                          ));
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //     builder: (context) => DetailsScreen(),
                          // ),
                        },
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
          }),
    );
  }
}
