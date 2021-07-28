// To parse this JSON data
import 'dart:convert';

List<History> historyFromJson(String str) => List<History>.from(json.decode(str).map((x) => History.fromJson(x)));

String historyToJson(History data) => json.encode(data.toJson());

class History {
  History({
    required this.title,
    required this.eventDateUtc
  });

  String title;
  DateTime eventDateUtc;

  factory History.fromJson(Map<String, dynamic> json) => History(
    title: json["title"],
    eventDateUtc: DateTime.parse(json["event_date_utc"]),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "event_date_utc": eventDateUtc.toIso8601String()
  };
}

class Links {
  Links({
    this.reddit,
    required this.article,
    required this.wikipedia,
  });

  dynamic reddit;
  String article;
  String wikipedia;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    reddit: json["reddit"],
    article: json["article"],
    wikipedia: json["wikipedia"],
  );

  Map<String, dynamic> toJson() => {
    "reddit": reddit,
    "article": article,
    "wikipedia": wikipedia,
  };
}
