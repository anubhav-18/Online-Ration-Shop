import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Noodles%20and%20pasta/cheesepasta.dart';
import 'package:food_delivering_app/pages/Categories/Noodles%20and%20pasta/maggi.dart';
import 'package:food_delivering_app/pages/Categories/Noodles%20and%20pasta/maggispecial.dart';
import 'package:food_delivering_app/pages/Categories/Noodles%20and%20pasta/pastamasala.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class PastaList extends StatefulWidget {
  const PastaList({super.key});

  @override
  State<PastaList> createState() => _PastaList();
}

class _PastaList extends State<PastaList> {
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
              img: 'assets/images/productimages/maggi1.jpeg',
              old_price: 68,
              new_price: 59,
              nxt_page: Maggi(),
              text: 'Maggi Family Pack (6 packs)               ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/ms1.jpeg',
              old_price: 19,
              new_price: 16,
              nxt_page: MaggiSpecial(),
              text: 'Maggi Special Masala                           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/pm1.jpeg',
              old_price: 54,
              new_price: 46,
              nxt_page: PastaMasala(),
              text: 'Maggi Desi Masala Pasta                       ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/pasta1.jpeg',
              old_price: 59,
              new_price: 51,
              nxt_page: CheesePasta(),
              text: 'Maggi Cheese Makhani Pasta                       ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/maggi1.jpeg',
              old_price: 68,
              new_price: 59,
              nxt_page: Maggi(),
              text: 'Maggi Family Pack (6 packs)               ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/ms1.jpeg',
              old_price: 19,
              new_price: 16,
              nxt_page: MaggiSpecial(),
              text: 'Maggi Special Masala                           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/pm1.jpeg',
              old_price: 54,
              new_price: 46,
              nxt_page: PastaMasala(),
              text: 'Maggi Desi Masala Pasta                       ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/pasta1.jpeg',
              old_price: 59,
              new_price: 51,
              nxt_page: CheesePasta(),
              text: 'Maggi Cheese Makhani Pasta                       ',
            ),
          ],
        ),
      ),
    );
  }
}