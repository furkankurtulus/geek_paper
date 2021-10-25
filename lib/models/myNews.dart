import 'dart:convert';

// ignore: unused_element
List<news> _NewsFromJson(String str) => List<news>.from(json.decode(str).map((x) => news.fromJson(x)));
String NewsToJson(List<news> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

news NewsFromJson(String str) => news.fromJson(json.decode(str));

// ignore: camel_case_types
class news {
  var id;
  var periodId;
  var matchingId;
  var isActive;
  var relationship;

  news({
    this.id,
    this.periodId,
    this.matchingId,
    this.isActive,
    this.relationship,
  });

  factory news.fromJson(Map<String, dynamic> json) => news(
        id: json["id"],
        periodId: json["periodId"],
        matchingId: json["matchingId"],
        isActive: json["isActive"],
        relationship: json["relationship"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "periodId": periodId,
        "matchingId": matchingId,
        "isActive": isActive,
        "relationship": relationship,
      };
}
