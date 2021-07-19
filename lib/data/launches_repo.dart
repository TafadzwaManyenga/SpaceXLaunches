import 'dart:developer';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:SpaceX_Launches/models/launches.dart';

final url = "https://api.spacexdata.com/v3/launches";

class LaunchRepository {
  Future<List<Launch>> getLaunches() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.

      return launchFromJson(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}