// 0xFF2d81e0

import 'package:flutter/material.dart';
import 'package:test_app/user_interface/auth/auth_fields_widget.dart';
import 'package:test_app/user_interface/styles/theme.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({ Key? key }) : super(key: key);

  final Text headerText = const 
  Text("Приложение поможет вам оставаться ВКонтакте, даже если вы далеко от компьютера",
  style: AuthTheme.secondAuthTextStyle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация VK'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(height: 10),
              headerText,
              const SizedBox(height: 20),             
              const AuthFieldsWidget(), 
            ],),
        
      ),
    );
  }
}

