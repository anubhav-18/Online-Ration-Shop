import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatelessWidget {
  const MyHeaderDrawer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff0378AD),
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(top: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.scaleDown
                )),
          ),
          Text(
            'Anubhav Bindal',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'xyz@info.com',
            style: TextStyle(color: Colors.grey[200], fontSize: 14),
          ),
        ]));
  }
}
