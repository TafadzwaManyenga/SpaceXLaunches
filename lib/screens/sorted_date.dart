import 'package:SpaceX_Launches/models/history.dart';
import 'package:SpaceX_Launches/data/history_repo.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Dates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dates"),
      ),
      body: FutureBuilder<List<History>>(
        future: HistoryRepository().getHistory(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, i) {
                return Container(
                    child: Center(
                      child: Card(
                        child: ListTile(
                            title: Text(DateFormat("yyyy/MM/dd hh:mm").format(snapshot.data![i].eventDateUtc)),
                            subtitle: Text(snapshot.data![i].title)
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