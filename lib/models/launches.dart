// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

// Launch launchFromJson(String str) => Launch.fromJson(json.decode(str)[0]);

List<Launch> launchFromJson(String str) => List<Launch>.from(json.decode(str).map((x) => Launch.fromJson(x)));

// String launchToJson(Launch data) => json.encode(data.toJson());

// String launchToJson(List<Launch> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Launch {
  final int flightNumber;
  final String missionName;
  final String launchYear;
  final String details;

  Launch({
    required this.flightNumber,
    required this.missionName,
    required this.launchYear,
    required this.details,
  });


  factory Launch.fromJson(Map<String, dynamic> json) {
    return Launch(
    flightNumber: json["flight_number"],
    missionName: json["mission_name"],
    launchYear: json["launch_year"],
    details: json["details"]
  );
  }

  // Map<String, dynamic> toJson() => {
  //   "flight_number": flightNumber,
  //   "mission_name": missionName,
  //   "launch_year": launchYear,
  //   "launch_date_utc": launchDateUtc.toIso8601String(),
  //   "launch_date_local": launchDateLocal.toIso8601String(),
  //   "launch_success": launchSuccess,
  //   "details": details,
  // };
}