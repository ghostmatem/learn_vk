import 'package:flutter/material.dart';
import 'package:test_app/user_interface/styles/dialogs_screen_theme.dart';

class CustomAppbarButton extends StatelessWidget {
  const CustomAppbarButton({ Key? key, required this.iconData, required this.callback }) : super(key: key);

  final IconData iconData;
  final Function() callback;

  @override
  Widget build(BuildContext context) {
    var size = DialogsScreenTheme.headerIconSize;
    return IconButton(
      icon: Icon(iconData), 
      onPressed: callback,
      iconSize: size,
      splashRadius: size * 0.82);
  }
}