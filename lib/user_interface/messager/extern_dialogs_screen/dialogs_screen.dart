import 'package:flutter/material.dart';
import 'package:test_app/user_interface/messager/custom_appbar_button.dart';
import 'package:test_app/user_interface/messager/extern_dialogs_screen/dialogs_widget.dart';


class DialogsScreen extends StatelessWidget {
  const DialogsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Сообщения"),
        leading: CustomAppbarButton(
          iconData: Icons.menu_rounded,
          callback: (){},
          ),
        actions: [
          CustomAppbarButton(
            iconData: Icons.search, 
            callback: _onSearchPress),
          const SizedBox(width: 10),
          CustomAppbarButton(
            iconData: const IconData(0xeafd, fontFamily: 'MaterialIcons'), 
            callback: _onPressOp), 
        ]),
        body: const DialogsWidget(),
    );
  }

  void _onSearchPress() {

  }

  void _onPressOp() {
    
  }
}