import 'package:flutter/material.dart';
import 'package:flutter_application_1a/model/RegisterScreen.dart';
import 'package:flutter_application_1a/model/UserScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenPageRegister(),
      // home: UserScreen(),
    );
  }
}