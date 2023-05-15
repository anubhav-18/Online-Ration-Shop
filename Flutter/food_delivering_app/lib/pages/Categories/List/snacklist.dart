import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/biscuits%20and%20snacks/bourbon.dart';
import 'package:food_delivering_app/pages/Categories/biscuits%20and%20snacks/darkfantasy.dart';
import 'package:food_delivering_app/pages/Categories/biscuits%20and%20snacks/jimjam.dart';
import 'package:food_delivering_app/pages/Categories/biscuits%20and%20snacks/parleg.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class SnackList extends StatefulWidget {
  const SnackList({super.key});

  @override
  State<SnackList> createState() => _SnackList();
}

class _SnackList extends State<SnackList> {
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
            Address_widget(),
            SizedBox(
              height: 5,
            ),
            ProductListTile(
              img: 'assets/images/productimages/b1.jpeg',
              old_price: 40,
              new_price: 35,
              nxt_page: Bourbon(),
              text: 'Britannia Bourbon The Original Cream Biscuits 150 g',
            ),
            ProductListTile(
              img: 'assets/images/productimages/df1.jpeg',
              old_price: 156,
              new_price: 134,
              nxt_page: DarkFantasy(),
              text: 'Sunfeast Dark Fantasy                          ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/jj1.jpeg',
              old_price: 42,
              new_price: 37,
              nxt_page: JimJam(),
              text: 'Sunfeast Jim Jam The Original Cream Biscuits 150 g',
            ),
            ProductListTile(
              img: 'assets/images/productimages/parleg1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: ParleG(),
              text: 'Parle G 1 Kg                                            ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/b1.jpeg',
              old_price: 40,
              new_price: 35,
              nxt_page: Bourbon(),
              text: 'Britannia Bourbon The Original Cream Biscuits 150 g',
            ),
            ProductListTile(
              img: 'assets/images/productimages/df1.jpeg',
              old_price: 156,
              new_price: 134,
              nxt_page: DarkFantasy(),
              text: 'Sunfeast Dark Fantasy                          ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/jj1.jpeg',
              old_price: 42,
              new_price: 37,
              nxt_page: JimJam(),
              text: 'Sunfeast Jim Jam The Original Cream Biscuits 150 g',
            ),
            ProductListTile(
              img: 'assets/images/productimages/parleg1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: ParleG(),
              text: 'Parle G 1 Kg                                            ',
            ),
          ],
        ),
      ),
    );
  }
}