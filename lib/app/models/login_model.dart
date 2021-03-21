import 'dart:convert';

import 'package:flutter/widgets.dart';

class SampleLogin {
  final String t;
  final int id;
  final String somethingElse;
  SampleLogin({
    @required this.t,
    @required this.id,
    @required this.somethingElse,
  });

  Map<String, dynamic> toMap() {
    return {
      't': t,
      'id': id,
      'somethingElse': somethingElse,
    };
  }

  factory SampleLogin.fromMap(Map<String, dynamic> map) {
    return SampleLogin(
      t: map['t'],
      id: map['id'],
      somethingElse: map['somethingElse'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SampleLogin.fromJson(String source) => SampleLogin.fromMap(json.decode(source));
}
