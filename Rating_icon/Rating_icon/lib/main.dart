import 'package:flutter/material.dart';
import './mainPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: mainPage(),
    ),
  ));
}