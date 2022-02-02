import 'package:flutter/material.dart';

abstract class DialogsScreenTheme {

  static const double headerIconSize = 30;

  static const TextStyle nameStyle = TextStyle(
    fontSize: 16.5,
    color: Color(0xFF256750));

  static const TextStyle messageStyle = TextStyle(
    fontSize: 16,
    color: Color(0xFF646464));

  static const TextStyle timeStyle = TextStyle();

  static const Color defaultTitleColor = Colors.transparent;
  static const Color highlightedTitleColor = Color(0xFFe9eef2);

  static const double mainIconSize = 50; // 60
  static const double secondIconSize = 25; // 34

  static const double litleOffset = 7.5;
  static const double bugOffset = 15; //12

  static const double horizontalInset = 15; //10
  static const double verticalInset = 12; // 14

  static const double titleHeight = mainIconSize + verticalInset * 2;
}