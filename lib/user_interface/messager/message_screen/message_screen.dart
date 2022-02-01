import 'package:flutter/material.dart';
import 'package:test_app/user_interface/fake_data.dart';
import 'package:test_app/user_interface/messager/custom_appbar_button.dart';
import 'package:test_app/user_interface/messager/extern_dialogs_screen/dialogs_widget.dart';
import 'package:test_app/user_interface/messager/icon_widget.dart';
import 'package:test_app/user_interface/messager/message_screen/message_body_widget.dart';
import 'package:test_app/user_interface/messager/message_screen/message_field_widget.dart';
import 'package:test_app/user_interface/styles/theme.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({ Key? key, required this.data }) : super(key: key);

  final VKFakeData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: _HeaderTitleWidget(data: data),
        actions: [
          CustomAppbarButton(
            iconData: const IconData(0xeafd, fontFamily: 'MaterialIcons'), 
            callback: _onHeaderButtonPressed)
          ],
      ),
      body: Column(
        children: [
          MessageBodyWidget(data: data),
          const MessageFieldWidget()
        ],
      ),
    );
  }

  _onHeaderButtonPressed() {

  }
}

class _HeaderTitleWidget extends StatelessWidget {
  const _HeaderTitleWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final VKFakeData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _IconWidgetButton(
          size: MessageScreenTheme.iconSize, 
          avatar: data.avatar),
        const SizedBox(width: MessageScreenTheme.headerPostIconOffset),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              data.name, 
              style: MessageScreenTheme.headerMainTextStyle,
              overflow: TextOverflow.fade),
            const SizedBox(height: MessageScreenTheme.headerIndentBetweenTexts),
            const Text(
              "Онлайн", 
              style: MessageScreenTheme.headersecondTextStyle)
          ]),
        )
      ]);
  }
}

class _IconWidgetButton extends StatelessWidget {
  const _IconWidgetButton({ Key? key, required this.size, required this.avatar }) : super(key: key);

  final double size;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: (){},
      child: FakeIconWidget(
        size: size,
        avatar: avatar,
      ),
    );
  }
}