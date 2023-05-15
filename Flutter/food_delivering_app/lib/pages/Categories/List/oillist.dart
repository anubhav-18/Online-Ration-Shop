import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Edible%20oil/fortune.dart';
import 'package:food_delivering_app/pages/Categories/Edible%20oil/gulab.dart';
import 'package:food_delivering_app/pages/Categories/Edible%20oil/saffola.dart';
import 'package:food_delivering_app/pages/Categories/Edible%20oil/saffolaactive.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class OilList extends StatefulWidget {
  const OilList({super.key});

  @override
  State<OilList> createState() => _OilList();
}

class _OilList extends State<OilList> {
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
          'Edible Oil',
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
              img: 'assets/images/productimages/fortune1.jpeg',
              old_price: 71,
              new_price: 60,
              nxt_page: Fortune(),
              text: 'Fortune Sun Lite Cooking Oil                      ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/gulab1.jpeg',
              old_price: 456,
              new_price: 414,
              nxt_page: Gulab(),
              text: 'Gulab Pure Sunflower Cooking Oil                  ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/sg1.jpeg',
              old_price: 240,
              new_price: 205,
              nxt_page: Saffola(),
              text: 'Saffola Gold Pure Sunflower Cooking Oil   ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/sa1.jpeg',
              old_price: 92,
              new_price: 82,
              nxt_page: SaffolaActive(),
              text: 'Saffola Active Pure Sunflower Cooking Oil   ',
            ),
           ProductListTile(
              img: 'assets/images/productimages/fortune1.jpeg',
              old_price: 71,
              new_price: 60,
              nxt_page: Fortune(),
              text: 'Fortune Sun Lite Cooking Oil                      ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/gulab1.jpeg',
              old_price: 456,
              new_price: 414,
              nxt_page: Gulab(),
              text: 'Gulab Pure Sunflower Cooking Oil                  ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/sg1.jpeg',
              old_price: 240,
              new_price: 205,
              nxt_page: Saffola(),
              text: 'Saffola Gold Pure Sunflower Cooking Oil   ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/sa1.jpeg',
              old_price: 92,
              new_price: 82,
              nxt_page: SaffolaActive(),
              text: 'Saffola Active Pure Sunflower Cooking Oil   ',
            ),
          ],
        ),
      ),
    );
  }
}