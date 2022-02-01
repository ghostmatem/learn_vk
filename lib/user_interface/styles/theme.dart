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