import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/DrawerPage/Categories.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Order.dart';
import 'package:food_delivering_app/pages/HomePage/Address.dart';
import 'package:food_delivering_app/pages/Splash_Login/splash_screen.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'firebase_options.dart';
import 'pages/Home_Page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/categories': (context) => CategoriesPage(),
        '/order': (context) => My_Order(),
        '/cart_page': (context) => CartPage(),
        '/address': (context) => Address(),
      },
    );
  }
}
