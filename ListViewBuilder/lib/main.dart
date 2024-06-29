import 'package:flutter/material.dart';
import './firstPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        body: mainPage()
    ),
  ));
}