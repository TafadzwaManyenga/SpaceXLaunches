import 'dart:convert';

List<Success> successFromJson(String str) => List<Success>.from(json.decode(str).map((x) => Success.fromJson(x)));

class Success {
  Success({
    required this.flightNumber,
    required this.missionName,
    required this.launchDateUtc,
    required this.launchSuccess,
  });

  int flightNumber;
  String missionName;
  DateTime launchDateUtc;
  bool launchSuccess;

  factory Success.fromJson(Map<String, dynamic> json) => Success(
    flightNumber: json["flight_number"],
    missionName: json["mission_name"],
    launchDateUtc: DateTime.parse(json["launch_date_utc"]),
    launchSuccess: json["launch_success"],
  );

}
