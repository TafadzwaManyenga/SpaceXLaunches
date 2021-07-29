import 'package:flutter/material.dart';
import 'package:SpaceX_Launches/data/launches_repo.dart';
import 'package:SpaceX_Launches/models/launches.dart';

class DetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Details"),
        ),
      body: FutureBuilder<List<Launch>>(
          future: LaunchRepository().getLaunches(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(
                  // "${snapshot.data[i].details}"
                  "Desciption here"
                )
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
