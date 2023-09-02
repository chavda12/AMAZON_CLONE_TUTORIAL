import 'package:amazon_clone_tutorial/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
      id: "",
      name: "",
      password: "",
      email: "",
      address: "",
      type: "",
      token: "");

  User get user => _user;

  void setUser(String user) {
    try {
      _user = User.fromJson(user);
      notifyListeners();
    } catch (e) {}
  }
}
