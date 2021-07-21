import 'dart:convert';

List<Mission> missionFromJson(String str) => List<Mission>.from(json.decode(str).map((x) => Mission.fromJson(x)));


class Mission {
  Mission({
    required this.missionName,
    required this.missionId,
    required this.wikipedia,
    required this.description,
  });

  String missionName;
  String missionId;
  String wikipedia;
  String description;

  factory Mission.fromJson(Map<String, dynamic> json) => Mission(
    missionName: json["mission_name"],
    missionId: json["mission_id"],
    wikipedia: json["wikipedia"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "mission_name": missionName,
    "mission_id": missionId,
    "wikipedia": wikipedia,
    "description": description,
  };
}