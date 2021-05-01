// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.zprn,
    required this.password,
  });

  String zprn;
  String password;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        zprn: json["zprn"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "zprn": zprn,
        "password": password,
      };
}
