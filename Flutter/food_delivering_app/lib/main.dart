import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/DrawerPage/Categories.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Order.dart';
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
      home: HomePage(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/categories': (context) => CategoriesPage(),
        '/order': (context) => My_Order(),
        '/cart_page': (context) => CartPage(),
<<<<<<< HEAD
=======
        '/address': (context) => Address(),
>>>>>>> 1d3dfa3191a9c357c9a19e623ba91fce4a58b8d2
      },
    );
  }
}
