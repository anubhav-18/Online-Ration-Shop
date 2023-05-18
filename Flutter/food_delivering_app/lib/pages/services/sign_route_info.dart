import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Home_Page.dart';
import 'package:food_delivering_app/pages/Splash_Login/splash_screen.dart';

class sign_route_info extends StatelessWidget {
  const sign_route_info({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return HomePage();
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Something Went Wrong'),
              );
            } else {
              return SplashScreen();
            }
          },
        ),
      );
}
