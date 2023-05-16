import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Cold%20drinks%20and%20juices/fanta.dart';
import 'package:food_delivering_app/pages/Categories/Cold%20drinks%20and%20juices/frooti.dart';
import 'package:food_delivering_app/pages/Categories/Cold%20drinks%20and%20juices/mazza.dart';
import 'package:food_delivering_app/pages/Categories/Cold%20drinks%20and%20juices/pepsi.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class DrinkList extends StatefulWidget {
  const DrinkList({super.key});

  @override
  State<DrinkList> createState() => _DrinkList();
}

class _DrinkList extends State<DrinkList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bckGrndColor,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Cold Drinks & Juices',
          style: TextStyle(fontWeight: FontWeight.bold),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductListTile(
              img: 'assets/images/productimages/fanta1.jpeg',
              old_price: 97,
              new_price: 84,
              nxt_page: Fanta(),
              text: 'Fanta  2 L                                                     ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/frooti1.jpeg',
              old_price: 86,
              new_price: 76,
              nxt_page: Frooti(),
              text: 'Frooti  2 L                                                 ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/mazza1.jpeg',
              old_price: 82,
              new_price: 74,
              nxt_page: Mazza(),
              text: 'Maaza  2 L                                                     ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/pepsi1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Pepsi(),
              text: 'Pepsi 2.25 L                                             ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/fanta1.jpeg',
              old_price: 97,
              new_price: 84,
              nxt_page: Fanta(),
              text: 'Fanta  2 L                                                     ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/frooti1.jpeg',
              old_price: 86,
              new_price: 76,
              nxt_page: Frooti(),
              text: 'Frooti  2 L                                                 ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/mazza1.jpeg',
              old_price: 82,
              new_price: 74,
              nxt_page: Mazza(),
              text: 'Maaza  2 L                                                     ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/pepsi1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Pepsi(),
              text: 'Pepsi 2.25 L                                             ',
            ),
          ],
        ),
      ),
    );
  }
}