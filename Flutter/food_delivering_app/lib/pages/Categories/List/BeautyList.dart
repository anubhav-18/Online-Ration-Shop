import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Beauty%20and%20Personal%20care/bodylotion.dart';
import 'package:food_delivering_app/pages/Categories/Beauty%20and%20Personal%20care/hairoil.dart';
import 'package:food_delivering_app/pages/Categories/Beauty%20and%20Personal%20care/shampoo.dart';
import 'package:food_delivering_app/pages/Categories/Beauty%20and%20Personal%20care/showergel.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class BeautyList extends StatefulWidget {
  const BeautyList({super.key});

  @override
  State<BeautyList> createState() => _BeautyList();
}

class _BeautyList extends State<BeautyList> {
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
          'Beauty & Personal Care',
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
              img: 'assets/images/productimages/lotion1.jpeg',
              old_price: 201,
              new_price: 159,
              nxt_page: BodyLotion(),
              text: 'Nivea Body Lotion                                    ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/hairoil1.jpeg',
              old_price: 96,
              new_price: 74,
              nxt_page: HairOil(),
              text: 'Parachute Coconut Hair Oil                    ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/shampoo1.jpeg',
              old_price: 150,
              new_price: 135,
              nxt_page: Shampoo(),
              text: 'Vatika Hair Health Shampoo               ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/gel1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: ShowerGel(),
              text: 'Nivea Shower Gel                                             ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/lotion1.jpeg',
              old_price: 201,
              new_price: 159,
              nxt_page: BodyLotion(),
              text: 'Nivea Body Lotion                                    ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/hairoil1.jpeg',
              old_price: 96,
              new_price: 74,
              nxt_page: HairOil(),
              text: 'Parachute Coconut Hair Oil                    ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/shampoo1.jpeg',
              old_price: 150,
              new_price: 135,
              nxt_page: Shampoo(),
              text: 'Vatika Hair Health Shampoo               ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/gel1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: ShowerGel(),
              text: 'Nivea Shower Gel                                             ',
            ),
          ],
        ),
      ),
    );
  }
}