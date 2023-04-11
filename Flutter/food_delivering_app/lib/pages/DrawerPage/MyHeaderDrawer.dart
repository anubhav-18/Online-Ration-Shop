import 'package:flutter/material.dart';

import 'My_Profile.dart';

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
          Stack(
            children: [ 
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // border: Border.all(
                  //   width: 2,
                  //   color: Colors.black
                  // ),
                  color: Colors.white ,
                  // image: DecorationImage(
                  //   image: NetworkImage(image),
                  //   fit: BoxFit.cover
                  // )
                ),
                child: Icon(
                  Icons.person,
                  size: 55,
                  color: Color(0xff0378AD).withOpacity(0.5)),
              ),
              Positioned(
                bottom: 12,
                right: 0,
                left: 45,
                child: 
                  InkWell(
                    onTap: () {   
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => My_Profile())
                      );
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Colors.black
                        ),
                        color: Colors.white
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                  )
              )
            ]
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
