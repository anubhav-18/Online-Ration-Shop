import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/services/google_sign.dart';

import 'My_Profile.dart';

class MyHeaderDrawer extends StatelessWidget {
  const MyHeaderDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser! ;

    return Container(
        color: bckGrndColor,
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(top: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: 
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(FirebaseAuth.instance.currentUser!.photoURL!)),
              // Icon(Icons.person,
              //     size: 55, color: bckGrndColor.withOpacity(0.5)),
            ),
            Positioned(
                bottom: 12,
                right: 0,
                left: 45,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => My_Profile()));
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.white),
                    child: Icon(
                      Icons.edit,
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ))
          ]),
          Text(
            '${FirebaseAuth.instance.currentUser!.displayName}',
            // 'Anubhahv0',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            '${FirebaseAuth.instance.currentUser!.email}',
            // 'email',
            style: TextStyle(color: Colors.grey[200], fontSize: 14),
          ),
        ]));
  }
}