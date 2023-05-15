import 'package:flutter/material.dart';
import 'package:food_delivering_app/firebase_options.dart';
import 'package:food_delivering_app/pages/DrawerPage/Categories.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Order.dart';
import 'package:food_delivering_app/pages/Splash_Login/login_page.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/services/google_sign.dart';
import 'package:provider/provider.dart';
import 'pages/Home_Page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/services/sign_route_info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
      // {
      =>
      ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child:
              // return
              MaterialApp(
            debugShowCheckedModeBanner: false,
            home:
                SafeArea(minimum: EdgeInsets.all(5), child: sign_route_info()),
            initialRoute: '/',
            routes: {
              '/home': (context) => HomePage(),
              '/categories': (context) => CategoriesPage(),
              '/order': (context) => My_Order(),
              '/cart_page': (context) => CartPage(),
              // LoginPage.route : (_) => LoginPage(),
            },
            // );
          ));
}
// }
