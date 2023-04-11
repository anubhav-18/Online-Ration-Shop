import 'package:flutter/material.dart';

class My_Cart extends StatefulWidget {
  const My_Cart({super.key});

  @override
  State<My_Cart> createState() => _My_CartState();
}

class _My_CartState extends State<My_Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart Page'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}