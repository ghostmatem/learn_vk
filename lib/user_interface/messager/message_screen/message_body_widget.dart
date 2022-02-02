import 'package:flutter/material.dart';
import 'package:test_app/user_interface/fake_data.dart';
import 'package:test_app/user_interface/messager/message_screen/message_title.dart';
import 'package:test_app/user_interface/styles/message_screen_theme.dart';

class MessageBodyWidget extends StatelessWidget {
  const MessageBodyWidget({ Key? key, required this.data }) : super(key: key);

  final VKFakeData data;

  @override
  Widget build(BuildContext context) {

    var messages = data.messages;
    var size = MediaQuery.of(context).size.width * 0.7;

      return Expanded(
        child: Container(
          color: MessageScreenTheme.messageBodyBackgroundColor,   
          child: ListView.builder(
            padding: MessageScreenTheme.messageWidgetPadding,
            itemCount: messages.length,
            itemBuilder: (context, i) => 
              MessageTitle(
                message: messages[i], 
                time: data.time,
                maxSizeTextWidth: size))             
          ),
      );
  }
}