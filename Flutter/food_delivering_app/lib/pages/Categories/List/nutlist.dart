import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/DryFruits%20and%20Nuts/almonds.dart';
import 'package:food_delivering_app/pages/Categories/DryFruits%20and%20Nuts/cashew.dart';
import 'package:food_delivering_app/pages/Categories/DryFruits%20and%20Nuts/pista.dart';
import 'package:food_delivering_app/pages/Categories/DryFruits%20and%20Nuts/walnet.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class NutList extends StatefulWidget {
  const NutList({super.key});

  @override
  State<NutList> createState() => _NutList();
}

class _NutList extends State<NutList> {
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
              img: 'assets/images/productimages/almond1.jpeg',
              old_price: 107,
              new_price: 89,
              nxt_page: Almonds(),
              text: 'Good Life Pure Almonds Dry Fruits         ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/cashew1.jpeg',
              old_price: 99,
              new_price: 81,
              nxt_page: Cashew(),
              text: 'Happie Pure White Cashew Nuts                   ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/pista1.jpeg',
              old_price: 97,
              new_price: 84,
              nxt_page: Pista(),
              text: 'Roasted Pistachios                                    ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/wlanut1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Walnet(),
              text: 'Good Life Pure Walnuts Dry Fruits         ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/almond1.jpeg',
              old_price: 107,
              new_price: 89,
              nxt_page: Almonds(),
              text: 'Good Life Pure Almonds Dry Fruits         ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/cashew1.jpeg',
              old_price: 99,
              new_price: 81,
              nxt_page: Cashew(),
              text: 'Happie Pure White Cashew Nuts                   ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/pista1.jpeg',
              old_price: 97,
              new_price: 84,
              nxt_page: Pista(),
              text: 'Roasted Pistachios                                    ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/wlanut1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Walnet(),
              text: 'Good Life Pure Walnuts Dry Fruits         ',
            ),
          ],
        ),
      ),
    );
  }
}