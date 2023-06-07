import 'dart:convert';

import 'package:glorycity/firebase_service.dart';

class User implements Serializable {
  String? id;
  String? email;
  String? registrationTime;

  User({
    this.id,
    this.email,
    this.registrationTime,
  });

  factory User.fromJson(Map? json) => User(
        id: json?["id"],
        email: json?["email"],
        registrationTime: json?["registrationTime"],
      );

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'email': email,
      'registrationTime': registrationTime,
    };
  }

  static User fromString(String userString) {
    return User.fromJson(jsonDecode(userString));
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
