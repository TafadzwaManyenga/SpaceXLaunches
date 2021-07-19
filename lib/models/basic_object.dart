class Launch {
  final int missionID;
  final String missionName;

  Launch({
    required this.missionID,
    required this.missionName,
  });

  factory Launch.fromJson(Map<String, dynamic> json) {
    return Launch(
      missionID: json['mission_id'],
      missionName: json['mission_name'],
    );
  }
}