import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(
          child: Text("Catalog", 
            style: TextStyle(
              color: Colors.white
            ),
          )
        ),
      ),
      body: const Center(
        child: Text("Welocme to the App Made by Anubhav"),
      ),
      drawer: const Drawer(),
    );
  }
}
