import 'package:flutter/foundation.dart';
import 'package:rethinkdb_dart/rethinkdb_dart.dart';

class User {
  String get id => _id;
  String username;
  String _id;
  String photourl;
  DateTime lastseen;
  bool active;

  User(
      {@required String username,
      @required String photourl,
      @required bool active,
      @required DateTime lastseen});

  toJson() => {
        'username': username,
        'photourl': photourl,
        'active': active,
        'lastseen': lastseen
      };

  factory User.fromJson(Map<String, dynamic> json) {
    final user = User(
      username: json['username'],
      photourl: json['photourl'],
      active: json['active'],
      lastseen: json['lastseen'],
    );
    user._id = json['id'];
    return user;
  }
}
