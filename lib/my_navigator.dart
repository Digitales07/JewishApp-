import 'package:flutter/material.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/home");

  }

  static void goToMain(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/main");
  }

}
