import 'dart:convert';

List<Success> successFromJson(String str) => List<Success>.from(json.decode(str).map((x) => Success.fromJson(x)));

class Success {
  Success({
    required this.missionName,
    required this.launchSuccess,
  });

  String missionName;
  bool launchSuccess;

  factory Success.fromJson(Map<String, dynamic> json) {
    return Success(
        missionName: json["mission_name"],
        launchSuccess: json["launch_success"] ?? true
    );
  }
}
