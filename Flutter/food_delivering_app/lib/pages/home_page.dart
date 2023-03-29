import 'package:flutter/material.dart';

import 'body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: buildApp(),
      body: Body(),
    );
  }

  AppBar buildApp() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Color.fromARGB(255, 238, 194, 210),
      title:
          Text("Grofers", style: TextStyle(color: Colors.black, fontSize: 20)),
      actions: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xffd4d181),
          child: Icon(Icons.search, size: 17, color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shopping_cart,
                size: 17,
                color: Colors.black,
              )),
        )
      ],
    );
  }
}
