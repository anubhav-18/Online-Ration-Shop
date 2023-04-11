import 'package:flutter/material.dart';

class My_Notifications extends StatefulWidget {
  const My_Notifications({super.key});

  @override
  State<My_Notifications> createState() => _My_NotificationsState();
}

class _My_NotificationsState extends State<My_Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notifications Page'),
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