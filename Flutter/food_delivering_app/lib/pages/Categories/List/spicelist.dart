import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Spices/chilli.dart';
import 'package:food_delivering_app/pages/Categories/Spices/garam.dart';
import 'package:food_delivering_app/pages/Categories/Spices/jeera.dart';
import 'package:food_delivering_app/pages/Categories/Spices/turmeric.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class SpiceList extends StatefulWidget {
  const SpiceList({super.key});

  @override
  State<SpiceList> createState() => _SpiceList();
}

class _SpiceList extends State<SpiceList> {
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
              img: 'assets/images/productimages/chilli1.jpeg',
              old_price: 87,
              new_price: 73,
              nxt_page: Chilli(),
              text: 'Everest Kashmiri Lal Teekhi Mirch           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/garam1.jpeg',
              old_price: 78,
              new_price: 69,
              nxt_page: Garam(),
              text: 'Everest Cooking Sabji Garam Masala           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/jeera1.jpeg',
              old_price: 62,
              new_price: 54,
              nxt_page: Jeera(),
              text: 'Catch Cooking Jeera Powder                  ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/turmeric1.jpeg',
              old_price: 74,
              new_price: 62,
              nxt_page: Turmeric(),
              text: 'Catch Cooking Turmeric Powder           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/chilli1.jpeg',
              old_price: 87,
              new_price: 73,
              nxt_page: Chilli(),
              text: 'Everest Kashmiri Lal Teekhi Mirch           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/garam1.jpeg',
              old_price: 78,
              new_price: 69,
              nxt_page: Garam(),
              text: 'Everest Cooking Sabji Garam Masala           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/jeera1.jpeg',
              old_price: 62,
              new_price: 54,
              nxt_page: Jeera(),
              text: 'Catch Cooking Jeera Powder                       ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/turmeric1.jpeg',
              old_price: 74,
              new_price: 62,
              nxt_page: Turmeric(),
              text: 'Catch Cooking Turmeric Powder           ',
            ),
          ],
        ),
      ),
    );
  }
}