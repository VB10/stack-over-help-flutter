// Models
import 'package:flutter/material.dart';

class UserManager extends ChangeNotifier {
  User user;

  Future<void> getUserData() async {
    await Future.delayed(Duration(seconds: 1));
    user = User("veli");
    notifyListeners();
  }
}

class User {
  final String name;

  User(this.name);
}

class HomeManager extends ChangeNotifier {
  User user;

  List<User> sampleUser = [];
  void setUser(User user) {
    this.user = user;
    getUserOnFakeDatabase();
  }

  Future<void> getUserOnFakeDatabase() async {
    await Future.delayed(Duration(seconds: 1));
    sampleUser = List.generate(10, (index) => User(index.toString()));
    notifyListeners();
  }
}
