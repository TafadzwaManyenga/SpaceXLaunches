import 'package:flutter/material.dart';
import 'package:SpaceX_Launches/data/successes_repo.dart';
import 'package:SpaceX_Launches/models/successes.dart';

class Successes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Successes"),
      ),
        body: FutureBuilder<List<Success>>(
            future: SuccessesRepository().getSuccesses(),
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
                              title: Text(snapshot.data![i].missionName)
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
        )
    );
  }
}