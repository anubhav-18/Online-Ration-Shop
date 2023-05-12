import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';

class My_Order extends StatefulWidget {
  @override
  State<My_Order> createState() => _My_OrderState();
}

class _My_OrderState extends State<My_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bckGrndColor,
        title: Text('My Order Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About_Us()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
