import 'package:flutter/material.dart';

abstract class AuthTheme {

  static const Color mainColor = Color(0xFF2d81e0);
  static const Color backColor = Color(0xFFaeb7c2);

  static const TextStyle secondAuthTextStyle = TextStyle(
    fontSize: 16,
  );

  static final ButtonStyle authButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))
      )
    ),
    textStyle: MaterialStateProperty.all(
      const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600
      ))
  );
}