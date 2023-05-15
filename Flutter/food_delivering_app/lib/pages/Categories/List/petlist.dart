import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Pet%20care/basil.dart';
import 'package:food_delivering_app/pages/Categories/Pet%20care/birdfeeder.dart';
import 'package:food_delivering_app/pages/Categories/Pet%20care/cage.dart';
import 'package:food_delivering_app/pages/Categories/Pet%20care/catbox.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class PetList extends StatefulWidget {
  const PetList({super.key});

  @override
  State<PetList> createState() => _PetList();
}

class _PetList extends State<PetList> {
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
              img: 'assets/images/productimages/basil1.jpeg',
              old_price: 181,
              new_price: 159,
              nxt_page: Basil(),
              text: 'Basil feed for pet dogs                              ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/bf1.jpeg',
              old_price: 1256,
              new_price: 1154,
              nxt_page: BirdFeeder(),
              text: 'Bird Feeder for home                               ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/cage1.jpeg',
              old_price: 989,
              new_price: 899,
              nxt_page: Cage(),
              text: 'Bird Keeping Cages at Home                 ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/cb1.jpeg',
              old_price: 895,
              new_price: 787,
              nxt_page: CatBox(),
              text: 'Cat Box for Home Portable                 ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/basil1.jpeg',
              old_price: 181,
              new_price: 159,
              nxt_page: Basil(),
              text: 'Basil feed for pet dogs                              ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/bf1.jpeg',
              old_price: 1256,
              new_price: 1154,
              nxt_page: BirdFeeder(),
              text: 'Bird Feeder for home                               ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/cage1.jpeg',
              old_price: 989,
              new_price: 899,
              nxt_page: Cage(),
              text: 'Bird Keeping Cages at Home                 ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/cb1.jpeg',
              old_price: 895,
              new_price: 787,
              nxt_page: CatBox(),
              text: 'Cat Box for Home Portable                 ',
            ),
          ],
        ),
      ),
    );
  }
}