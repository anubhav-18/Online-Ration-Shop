import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/constants.dart';

class See_All extends StatefulWidget {
  const See_All({super.key});

  @override
  State<See_All> createState() => _See_AllState();
}

class _See_AllState extends State<See_All> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            // size: 16,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        
        title: Text(
          'BestSeller',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
