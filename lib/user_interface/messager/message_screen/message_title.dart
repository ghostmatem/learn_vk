import 'package:flutter/material.dart';
import 'package:test_app/user_interface/fake_data.dart';
import 'package:test_app/user_interface/styles/theme.dart';

class MessageTitle extends StatelessWidget {
  const MessageTitle({ Key? key, required this.message, required this.time, required this.maxSizeTextWidth}) : super(key: key);

  final String message;
  final String time;
  final bool isMyMessage = true;
  final bool isRead = true;
  final double maxSizeTextWidth;

  @override
  Widget build(BuildContext context) {
    var timeText = Text(time, style: MessageScreenTheme.timeOfMessageStyle);

    var rowWidgets = [
      const Expanded(child: SizedBox()),
      timeText,
      const SizedBox(width: MessageScreenTheme.postTimeInset),
      Container(
        decoration: _getBoxDecoration(),
        padding: MessageScreenTheme.messageBoxPadding,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxSizeTextWidth),
          child: Text(
            message, 
            style: MessageScreenTheme.messageTextStyle),
        )),       
      ];

    return GestureDetector(
      onTap: _onTap,
      onLongPress: _onLongPress,
      child: ColoredBox(
        color: isRead ? Colors.transparent : MessageScreenTheme.colorOfUnreadMessage,
        child: Column(
          children: [
            const SizedBox(height: MessageScreenTheme.messageBoxExternInset),
            Row(children: 
              isMyMessage ? rowWidgets
              : rowWidgets.reversed.toList()),
          const SizedBox(height: MessageScreenTheme.messageBoxExternInset)
          ]
        ),
      ),
    );
  }

  void _onTap() { }
  void _onLongPress() { }

  BoxDecoration _getBoxDecoration() {
    return BoxDecoration(
      color: isMyMessage ? MessageScreenTheme.myMessageColor
      : MessageScreenTheme.otherMessageColor,
      border: Border.all(
        color: Colors.blueGrey.shade200,
        width: 0.5
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}