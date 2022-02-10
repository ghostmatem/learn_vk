import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_app/user_interface/messager/extern_dialogs_screen/dialogs_widget.dart';
import 'package:test_app/user_interface/navigation/main_app_navigation.dart';
import 'package:test_app/user_interface/styles/auth_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  genAndPlaceData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainAppNavigation mainAppNavigation = MainAppNavigation();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: 
          AuthTheme.mainColor),
        primarySwatch: Colors.blue,
      ),
      routes: mainAppNavigation.routes,
      initialRoute: mainAppNavigation.initialRoute
        );
  }
}
