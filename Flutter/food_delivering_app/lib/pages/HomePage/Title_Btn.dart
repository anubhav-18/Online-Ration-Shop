import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';
import 'package:food_delivering_app/pages/constants.dart';

class Titlewithbtn extends StatelessWidget {
  const Titlewithbtn({
    super.key,
    required this.title,
    required this.buttonName,
  });

  final String title, buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(children: <Widget>[
        Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        TextButton(
            onPressed: () {
              Navigator.push(context, (MaterialPageRoute(builder: (context) => See_All())));
            },
            child: Text(
              buttonName,
              style: TextStyle(color: bckGrndColor),
            ))
      ]),
    );
  }
}
