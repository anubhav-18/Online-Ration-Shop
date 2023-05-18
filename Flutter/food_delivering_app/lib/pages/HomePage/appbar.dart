import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/constants.dart';

AppBar buildApp() {
  return AppBar(
    centerTitle: true,
    backgroundColor: bckGrndColor,
    title: Text('Grocers'),
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
      onPressed: () {
        // Navigator.pop(context);
      },
    ),
    actions: [
      Padding(
        padding: EdgeInsets.all(10),
        child: CircleAvatar(
            radius: 15,
            backgroundColor: bckGrndColor,
            child: InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => About_Us()));
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )),
      ),
      Padding(
        padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 15),
        child: CircleAvatar(
            radius: 15,
            backgroundColor: bckGrndColor,
            child: InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => CartPage()));
              },
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            )),
      )
    ],
  );
}
