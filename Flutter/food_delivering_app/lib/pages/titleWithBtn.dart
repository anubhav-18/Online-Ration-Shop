import 'package:flutter/material.dart';


class Titlewithbtn extends StatelessWidget {
  const Titlewithbtn({
    super.key, 
    required this.title, 
    this.buttonName,
  });

  final title, buttonName ;

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
            onPressed: () {},
            child: Text(
              buttonName,
              style: TextStyle(color: Color(0xff0c9869)),
            ))
      ]),
    );
  }
}
