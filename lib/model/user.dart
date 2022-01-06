// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.name,
    required this.id,
    required this.email,
    required this.isSeller,
    required this.token,
  });

  String name;
  int id;
  String email;
  bool isSeller;
  String token;

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"],
    id: json["id"],
    email: json["email"],
    isSeller: json["isSeller"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "id": id,
    "email": email,
    "isSeller": isSeller,
    "token": token,
  };
}
