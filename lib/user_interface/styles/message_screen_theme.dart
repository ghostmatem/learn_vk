import 'package:flutter/material.dart';

abstract class MessageScreenTheme {

  static const double iconSize = 46;
  static const TextStyle headerMainTextStyle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    color: Color(0xFFfbf5fc)
  );
  static const TextStyle headersecondTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFFc1c1c1)
  );

  static const double headerPostIconOffset = 15;
  static const double headerIndentBetweenTexts = 5;

  static const InputDecoration messageFieldDecoration = InputDecoration(
    labelText: 'Ваше сообщение',
  );

  static const Color messageBodyBackgroundColor = Color(0xFFebf0f4);
  static const Color myMessageColor = Color(0xFFd6e7f9);
  static const Color otherMessageColor = Color(0x9Affffff);
  static const Color colorOfUnreadMessage = Color(0xFFd3dde6);

  static const EdgeInsets messageWidgetPadding = EdgeInsets.all(12);
  static const EdgeInsets messageBoxPadding = EdgeInsets.all(12);
  static const double messageBoxExternInset = 6;
  static const double postTimeInset = 15;
  
  static const TextStyle timeOfMessageStyle = TextStyle();
  static const TextStyle messageTextStyle = TextStyle(
    fontSize: 16,
  );
}