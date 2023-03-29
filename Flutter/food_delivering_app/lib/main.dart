import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/login_page.dart';

import 'pages/home_page.dart';

import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // themeMode: ThemeMode.light,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // routes: {
      //   "/" :(context) => HomePage(),
      //   "/login" :(context) => LoginPage()
      // },
      home: HomePage(),
    );
  }
}
