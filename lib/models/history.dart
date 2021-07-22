// To parse this JSON data, do
//
//     final mission = missionFromJson(jsonString);

import 'dart:convert';

// History historyFromJson(String str) => History.fromJson(json.decode(str));
List<History> historyFromJson(String str) => List<History>.from(json.decode(str).map((x) => History.fromJson(x)));


String historyToJson(History data) => json.encode(data.toJson());

class History {
  History({
    // required this.id,
    required this.title,
    required this.eventDateUtc,
    // required this.eventDateUnix,
    // required this.flightNumber,
    // required this.details,
    // required this.links,
  });

  // int id;
  String title;
  DateTime eventDateUtc;
  // int eventDateUnix;
  // int flightNumber;
  // String details;
  // Links links;

  factory History.fromJson(Map<String, dynamic> json) => History(
    // id: json["id"],
    title: json["title"],
    eventDateUtc: DateTime.parse(json["event_date_utc"]),
    // eventDateUnix: json["event_date_unix"],
    // flightNumber: json["flight_number"],
    // details: json["details"],
    // links: Links.fromJson(json["links"]),
  );

  Map<String, dynamic> toJson() => {
    // "id": id,
    "title": title,
    "event_date_utc": eventDateUtc.toIso8601String(),
    // "event_date_unix": eventDateUnix,
    // "flight_number": flightNumber,
    // "details": details,
    // "links": links.toJson(),
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
