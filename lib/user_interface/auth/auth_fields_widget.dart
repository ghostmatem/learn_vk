import 'package:flutter/material.dart';
import 'package:test_app/app_routes.dart';
import 'package:test_app/user_interface/styles/theme.dart';

class AuthFieldsWidget extends StatefulWidget {
  const AuthFieldsWidget({ Key? key}) : super(key: key);

  @override
  State<AuthFieldsWidget> createState() => _AuthFieldsWidgetState();
}

class _AuthFieldsWidgetState extends State<AuthFieldsWidget> {

  final TextEditingController loginController = TextEditingController(text: "admin");
  final TextEditingController passwordController = TextEditingController(text: "pass");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _AuthTextField(
          controller: loginController, 
          startText: "Телефон или email", 
          hideText: false),
          const SizedBox(height: 10),
        _AuthTextField(
          controller: passwordController, 
          startText: "Пароль", 
          hideText: true),
        const SizedBox(height: 15),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _auth, 
            child: const Text("Войти"),
            style: AuthTheme.authButtonStyle)),                     
        Row(
          children: [
            OutlinedButton(
              onPressed: _forgetPass, 
              child: const Text("Забыли пароль?"), 
              style: AuthTheme.authButtonStyle),
            const SizedBox(width: 12),
            Expanded(
              child: OutlinedButton(
                onPressed: _register, 
                child: const Text("Зарегистрироваться"),
                style: AuthTheme.authButtonStyle)
            ),
          ]),  
        const SizedBox(width: 12),             
      ]
    );
  }

  void _auth () {
    var login = loginController.text;
    var password = passwordController.text;

    if (login == "admin" && password == "pass") {
      Navigator.of(context).pushReplacementNamed(AppRoutes.messages);
    }
  }

  void _forgetPass() {

  }

  void _register() {

  }
}

class _AuthTextField extends StatelessWidget {
  const _AuthTextField({ Key? key, required this.startText, required this.hideText, required this.controller}) : super(key: key);

  final String startText;
  final bool hideText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hideText,
      controller: controller,
      decoration: InputDecoration(
        labelText: startText,       
        border: const OutlineInputBorder(
          gapPadding: 0,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12)
        ),
      );   
  }
}