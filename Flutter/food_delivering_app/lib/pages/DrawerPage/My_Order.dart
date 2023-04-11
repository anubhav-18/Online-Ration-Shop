import 'package:flutter/material.dart';

class My_Order extends StatefulWidget {
  @override
  State<My_Order> createState() => _My_OrderState();
}

class _My_OrderState extends State<My_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Order Page'),
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
