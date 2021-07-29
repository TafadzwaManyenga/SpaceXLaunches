import 'dart:convert';

List<Mission> missionFromJson(String str) => List<Mission>.from(json.decode(str).map((x) => Mission.fromJson(x)));


class Mission {
  Mission({
    required this.missionName,
    required this.wikipedia,
    required this.description,
  });

  String missionName;
  String wikipedia;
  String description;

  factory Mission.fromJson(Map<String, dynamic> json) => Mission(
    missionName: json["mission_name"],
    wikipedia: json["wikipedia"],
    description: json["description"],
  );
}