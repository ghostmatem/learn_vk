import 'package:flutter/material.dart';
import 'package:test_app/user_interface/auth/auth_screen.dart';
import 'package:test_app/user_interface/messager/extern_dialogs_screen/dialogs_screen.dart';
import 'package:test_app/user_interface/messager/message_screen/message_screen.dart';

import '../fake_data.dart';
import 'app_routes.dart';

class MainAppNavigation {

  final routes =  <String, Widget Function(BuildContext)> {
        AppRoutes.auth : (context) => const AuthScreen(),
        AppRoutes.messages : (context) => const DialogsScreen(),
        AppRoutes.dialog : _pushToMessageScreen
  };

  final initialRoute = AppRoutes.auth;

  static Widget _pushToMessageScreen(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as VKFakeData;
    return MessageScreen(data: data);
  }
}