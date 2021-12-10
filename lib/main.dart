import 'package:flutter/material.dart';
import 'package:plant_app/components.dart';
import 'package:plant_app/screens/main_menu/main_menu.dart';

void main() {
  runApp(
    MaterialApp(
      home: const MainMenu(),
      theme: ThemeData(
        backgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: kTextColor,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
