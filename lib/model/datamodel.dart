// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  String id;
  String name;
  int age;
  String colour;

  DataModel({
    required this.id,
    required this.name,
    required this.age,
    required this.colour,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    id: json["_id"],
    name: json["name"],
    age: json["age"],
    colour: json["colour"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "age": age,
    "colour": colour,
  };
}
