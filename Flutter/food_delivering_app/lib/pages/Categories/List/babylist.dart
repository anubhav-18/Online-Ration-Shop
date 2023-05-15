import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Mom%20and%20baby%20care/ceregrow.dart';
import 'package:food_delivering_app/pages/Categories/Mom%20and%20baby%20care/diaper.dart';
import 'package:food_delivering_app/pages/Categories/Mom%20and%20baby%20care/infantmilk.dart';
import 'package:food_delivering_app/pages/Categories/Mom%20and%20baby%20care/soap.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class BabyList extends StatefulWidget {
  const BabyList({super.key});

  @override
  State<BabyList> createState() => _BabyList();
}

class _BabyList extends State<BabyList> {
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
          'Mom & Baby Care',
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
              img: 'assets/images/productimages/cg1.jpeg',
              old_price: 331,
              new_price: 269,
              nxt_page: CereGrow(),
              text: 'Nestle Ceregrow Multigrain Cerial',
            ),
            ProductListTile(
              img: 'assets/images/productimages/diaper1.jpeg',
              old_price: 56,
              new_price: 54,
              nxt_page: Diaper(),
              text: 'Mamy Poko Pants Diapers            ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/im1.jpeg',
              old_price: 40,
              new_price: 35,
              nxt_page: InfantMilk(),
              text: 'Amul Infant Milk                              ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/hs1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Soap(),
              text: 'Himalayan Baby Soap                    ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/cg1.jpeg',
              old_price: 331,
              new_price: 269,
              nxt_page: CereGrow(),
              text: 'Nestle Ceregrow Multigrain Cerial',
            ),
            ProductListTile(
              img: 'assets/images/productimages/diaper1.jpeg',
              old_price: 56,
              new_price: 54,
              nxt_page: Diaper(),
              text: 'Mamy Poko Pants Diapers            ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/im1.jpeg',
              old_price: 40,
              new_price: 35,
              nxt_page: InfantMilk(),
              text: 'Amul Infant Milk                              ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/hs1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Soap(),
              text: 'Himalayan Baby Soap                    ',
            ),
          ],
        ),
      ),
    );
  }
}