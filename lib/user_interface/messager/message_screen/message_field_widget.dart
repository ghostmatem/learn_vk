import 'package:flutter/material.dart';
import 'package:test_app/user_interface/messager/message_screen/text_field_button.dart';
import 'package:test_app/user_interface/styles/message_screen_theme.dart';

class MessageFieldWidget extends StatelessWidget {
  const MessageFieldWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(children: [
        TextFieldButton(
          icon: Icons.add,
          callback: _add),
          const _TextFieldWrap(),
          TextFieldButton(
          icon:Icons.face,
          callback: _choiseSmile),
          TextFieldButton(
          icon: Icons.send,
          callback: _send),
      ])
    );
  }

  void _add() { }
  void _choiseSmile() { }

  void _send() { }
}

class _TextFieldWrap extends StatelessWidget {
  const _TextFieldWrap({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TextField(
        decoration: MessageScreenTheme.messageFieldDecoration,
      ),
    );
  }
}