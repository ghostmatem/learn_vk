import 'package:flutter/material.dart';
import 'package:test_app/user_interface/navigation/app_routes.dart';
import 'package:test_app/user_interface/fake_data.dart';
import 'package:test_app/user_interface/messager/icon_widget.dart';
import 'package:test_app/user_interface/styles/dialogs_screen_theme.dart';


class DialogListTitle extends StatelessWidget {
  const DialogListTitle({ Key? key, required this.data}) : super(key: key);

  final Widget status = const Icon(Icons.ac_unit, size: 10);
  final bool highlighted = false;
  final VKFakeData data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(        
        padding: const EdgeInsets.symmetric(
          horizontal: DialogsScreenTheme.horizontalInset,
          vertical: DialogsScreenTheme.verticalInset),
        height: DialogsScreenTheme.titleHeight,
        width: double.infinity,
        child: Row(children: [
          Stack(
            children: [
              FakeIconWidget(size: DialogsScreenTheme.mainIconSize,
              avatar: data.avatar),
              Positioned(child: status, right: 0.01, bottom: 0.01)
            ],
          ),
          const SizedBox(width: DialogsScreenTheme.bugOffset),
          _TitleBoby(data: data),
        ],),
      ),
      onTap: () => _openDialog(context),
      onLongPress: _openOptions,
    );
  }

  void _openDialog(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.dialog, arguments: data);
  }
  void _openOptions() {}
}

class _TitleBoby extends StatelessWidget {
  const _TitleBoby({ Key? key, required this.data }) : super(key: key);

  final VKFakeData data;

  @override
  Widget build(BuildContext context) {

    final icon = FakeIconWidget(size: DialogsScreenTheme.secondIconSize, avatar: data.otherAvatar);
    const empty = SizedBox();
    const postWidget = Icon(Icons.ac_unit, size: 10);

    var state = _textWidStates.myLastNotReaded;
    final stateMap = getStatesMap(icon, empty, postWidget);

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _NameWidget(name: data.name, time: data.time),
          _MessageTextWidget(
            message: data.messages.last, 
            state: state, 
            stateData: stateMap[state]!)
        ],
      ),
    );
  }

  Map<_textWidStates, _MessageTextState> getStatesMap(icon, empty, postWidget) {
    return <_textWidStates, _MessageTextState>{
    _textWidStates.myLastNotReaded : 
    _MessageTextState(
      icon,
      DialogsScreenTheme.litleOffset, 
      DialogsScreenTheme.highlightedTitleColor,
      postWidget),

    _textWidStates.myLastReaded : _MessageTextState(
      icon,
      0, 
      DialogsScreenTheme.defaultTitleColor,
      empty),

    _textWidStates.otherLastNotReaded : _MessageTextState(
      empty,
      0, 
      DialogsScreenTheme.defaultTitleColor,
      postWidget),
    
    _textWidStates.otherLastReaded : _MessageTextState(
      empty,
      0, 
      DialogsScreenTheme.defaultTitleColor,
      empty),
    };
  }
}

class _NameWidget extends StatelessWidget {
  const _NameWidget({
    Key? key,
    required this.name,
    required this.time,
  }) : super(key: key);

  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Expanded(child: Text(
        name, 
        style: DialogsScreenTheme.nameStyle,
        overflow: TextOverflow.ellipsis)),           
      Text(time, style: DialogsScreenTheme.timeStyle),
    ]);
  }
}

class _MessageTextWidget extends StatelessWidget {
  const _MessageTextWidget({
    Key? key,
    required this.message, required this.stateData, required this.state,
  }) : super(key: key);

  final String message;
  final _textWidStates state;
  final _MessageTextState stateData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        stateData.secondIcon,
        state == _textWidStates.myLastNotReaded || state == _textWidStates.myLastReaded ?
        const SizedBox(width: DialogsScreenTheme.litleOffset) : const SizedBox(),
        Expanded(
          child: Container(
            padding: stateData.padding,
            color: stateData.color,
            alignment: Alignment.centerLeft,
            height: DialogsScreenTheme.secondIconSize,
            child: Text(
              message, 
              style: DialogsScreenTheme.messageStyle,
              overflow: TextOverflow.ellipsis)),
        ),
        const SizedBox(width:  DialogsScreenTheme.litleOffset),
        stateData.messageStatus,
        const SizedBox(width:  DialogsScreenTheme.litleOffset), 
      ],
    );
  }
}

enum _textWidStates {
  myLastNotReaded,
  myLastReaded,
  otherLastNotReaded,
  otherLastReaded,
}

class _MessageTextState{
  final Widget secondIcon;
  late EdgeInsetsGeometry padding;
  final Color color;
  final Widget messageStatus;

  _MessageTextState(this.secondIcon, double padding, this.color, this.messageStatus) {
    this.padding = EdgeInsets.only(left: padding);
  }
}