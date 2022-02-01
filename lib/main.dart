import 'package:flutter/material.dart';
import 'package:test_app/app_routes.dart';
import 'package:test_app/user_interface/auth/auth_screen.dart';
import 'package:test_app/user_interface/fake_data.dart';
import 'package:test_app/user_interface/messager/extern_dialogs_screen/dialogs_screen.dart';
import 'package:test_app/user_interface/messager/extern_dialogs_screen/dialogs_widget.dart';
import 'package:test_app/user_interface/messager/message_screen/message_screen.dart';
import 'package:test_app/user_interface/styles/theme.dart';

void main() {
  genAndPlaceData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: 
          AuthTheme.mainColor),
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppRoutes.auth : (context) => const AuthScreen(),
        AppRoutes.messages : (context) => const DialogsScreen(),
        AppRoutes.dialog : _pushToMessageScreen
      },
      initialRoute: AppRoutes.auth,
        );
  }

  Widget _pushToMessageScreen(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as VKFakeData;
    return MessageScreen(data: data);
  }
}





// MultiBlocProvider(
//         providers: [
//           BlocProvider<CatalogBloc>(create: (context) => CatalogBloc(repository)),
//           BlocProvider<CartBloc>(create: (context) => CartBloc(repository))
//         ],
//         child: const MainScreen(),
//       )