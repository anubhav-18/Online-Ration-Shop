import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Salt%20sugar/jaggery.dart';
import 'package:food_delivering_app/pages/Categories/Salt%20sugar/rocksalt.dart';
import 'package:food_delivering_app/pages/Categories/Salt%20sugar/salt.dart';
import 'package:food_delivering_app/pages/Categories/Salt%20sugar/sugar.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class SugarList extends StatefulWidget {
  const SugarList({super.key});

  @override
  State<SugarList> createState() => _SugarList();
}

class _SugarList extends State<SugarList> {
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
        centerTitle: false,
        title: Text(
          'BestSeller',
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
            SizedBox(
              height: 5,
            ),
            ProductListTile(
              img: 'assets/images/productimages/jaggery1.jpeg',
              old_price: 281,
              new_price: 249,
              nxt_page: Jaggery(),
              text: 'Oree Pure Sweet Jaggery (Gud)          ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/rocksalt1.jpeg',
              old_price: 156,
              new_price: 134,
              nxt_page: RockSalt(),
              text: 'Tata Pure Rock Salt                                     ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/ts1.jpeg',
              old_price: 40,
              new_price: 35,
              nxt_page: Salt(),
              text: 'Tata Pure Iodised Salt For Cooking      ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/sugar1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Sugar(),
              text: 'Madhur White Pure Sugar                                             ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/jaggery1.jpeg',
              old_price: 281,
              new_price: 249,
              nxt_page: Jaggery(),
              text: 'Oree Pure Sweet Jaggery (Gud)          ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/rocksalt1.jpeg',
              old_price: 156,
              new_price: 134,
              nxt_page: RockSalt(),
              text: 'Tata Pure Rock Salt                                     ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/ts1.jpeg',
              old_price: 40,
              new_price: 35,
              nxt_page: Salt(),
              text: 'Tata Pure Iodised Salt For Cooking      ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/sugar1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Sugar(),
              text: 'Madhur White Pure Sugar                                             ',
            ),
          ],
        ),
      ),
    );
  }
}