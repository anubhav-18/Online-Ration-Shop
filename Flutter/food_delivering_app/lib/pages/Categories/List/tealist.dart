import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Tea%20and%20Coffee/bru.dart';
import 'package:food_delivering_app/pages/Categories/Tea%20and%20Coffee/nescafe.dart';
import 'package:food_delivering_app/pages/Categories/Tea%20and%20Coffee/tatatea.dart';
import 'package:food_delivering_app/pages/Categories/Tea%20and%20Coffee/wagh.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class TeaList extends StatefulWidget {
  const TeaList({super.key});

  @override
  State<TeaList> createState() => _TeaList();
}

class _TeaList extends State<TeaList> {
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
              img: 'assets/images/productimages/bru1.jpeg',
              old_price: 111,
              new_price: 97,
              nxt_page: Bru(),
              text: 'BRU Instant Coffee                                  ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/nescafe1.jpeg',
              old_price: 78,
              new_price: 66,
              nxt_page: Nescafe(),
              text: 'Nescafe Gold Pure Coffee                          ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/tpt1.jpeg',
              old_price: 91,
              new_price: 79,
              nxt_page: TataTea(),
              text: 'Tata Premium Tea                                           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/wb1.jpeg',
              old_price: 85,
              new_price: 77,
              nxt_page: Wagh(),
              text: 'Wagh Bakri Chai                                             ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/bru1.jpeg',
              old_price: 111,
              new_price: 97,
              nxt_page: Bru(),
              text: 'BRU Instant Coffee                                  ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/nescafe1.jpeg',
              old_price: 78,
              new_price: 66,
              nxt_page: Nescafe(),
              text: 'Nescafe Gold Pure Coffee                          ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/tpt1.jpeg',
              old_price: 91,
              new_price: 79,
              nxt_page: TataTea(),
              text: 'Tata Premium Tea                                           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/wb1.jpeg',
              old_price: 85,
              new_price: 77,
              nxt_page: Wagh(),
              text: 'Wagh Bakri Chai                                             ',
            ),
          ],
        ),
      ),
    );
  }
}