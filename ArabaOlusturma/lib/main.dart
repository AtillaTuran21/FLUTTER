import 'package:flutter/material.dart';
import './login.dart';
import './carCreate.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: loginPage(),
    ),
  ));
}

