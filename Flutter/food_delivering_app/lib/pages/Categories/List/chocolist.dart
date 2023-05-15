import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Chocolates%20and%20sweets/choclairs.dart';
import 'package:food_delivering_app/pages/Categories/Chocolates%20and%20sweets/fuse.dart';
import 'package:food_delivering_app/pages/Categories/Chocolates%20and%20sweets/kitkat.dart';
import 'package:food_delivering_app/pages/Categories/Chocolates%20and%20sweets/lottechoco.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class ChocoList extends StatefulWidget {
  const ChocoList({super.key});

  @override
  State<ChocoList> createState() => _ChocoList();
}

class _ChocoList extends State<ChocoList> {
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
              img: 'assets/images/productimages/cl1.jpeg',
              old_price: 101,
              new_price: 89,
              nxt_page: Choclairs(),
              text: 'Chocolairs Toffees Packet                 ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/fuse1.jpeg',
              old_price: 30,
              new_price: 28,
              nxt_page: Fuse(),
              text: 'Cadbury Fuse                                         ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/kk1.jpeg',
              old_price: 40,
              new_price: 35,
              nxt_page: KitKat(),
              text: 'Kitkat Family Pack                               ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/lotte1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: LotteChoco(),
              text: 'Lotte Choco Pie Family Pack               ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/cl1.jpeg',
              old_price: 101,
              new_price: 89,
              nxt_page: Choclairs(),
              text: 'Chocolairs Toffees Packet                 ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/fuse1.jpeg',
              old_price: 30,
              new_price: 28,
              nxt_page: Fuse(),
              text: 'Cadbury Fuse                                         ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/kk1.jpeg',
              old_price: 40,
              new_price: 35,
              nxt_page: KitKat(),
              text: 'Kitkat Family Pack                               ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/lotte1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: LotteChoco(),
              text: 'Lotte Choco Pie Family Pack               ',
            ),
          ],
        ),
      ),
    );
  }
}