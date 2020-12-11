import 'dart:convert';

class User {
  String _firstName; // holds firstname of user
  String _otherNames; //holds other names of user
  String _email; //holds email of user

  User.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson);
    _firstName = parsedJson['other_aame'];
    _otherNames = parsedJson['last_Name'];
    _email = parsedJson['email'];
  }


}
