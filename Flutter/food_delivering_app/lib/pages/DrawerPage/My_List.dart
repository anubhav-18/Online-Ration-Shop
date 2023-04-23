import 'package:flutter/material.dart';

class My_List extends StatefulWidget {
  const My_List({super.key});

  @override
  State<My_List> createState() => _My_ListState();
}

class _My_ListState extends State<My_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My List Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}