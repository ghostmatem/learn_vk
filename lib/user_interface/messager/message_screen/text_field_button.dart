import 'package:flutter/material.dart';

class TextFieldButton extends StatelessWidget {
  const TextFieldButton({ Key? key, required this.icon, required this.callback }) : super(key: key);

  final IconData icon;
  final Function() callback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: callback,
    );
  }
}