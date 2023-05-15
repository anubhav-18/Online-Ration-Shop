import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Dal&Pulses/ChanaDal.dart';
import 'package:food_delivering_app/pages/Categories/Dal&Pulses/MoongDal.dart';
import 'package:food_delivering_app/pages/Categories/Dal&Pulses/SoyaChunks.dart';
import 'package:food_delivering_app/pages/Categories/Dal&Pulses/ToorDal.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class DalList extends StatefulWidget {
  const DalList({super.key});

  @override
  State<DalList> createState() => _DalList();
}

class _DalList extends State<DalList> {
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
              img: 'assets/images/productimages/chana1.jpeg',
              old_price: 72,
              new_price: 64,
              nxt_page: ChanaDal(),
              text: 'Tata Sampann Chana Dal                           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/moon1.jpeg',
              old_price: 70,
              new_price: 61,
              nxt_page: MoongDal(),
              text: 'Tata Sampann Moong Dal                           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/soya1.jpeg',
              old_price: 82,
              new_price: 70,
              nxt_page: Soyachunks(),
              text: 'Fortune Soya Chunks                             ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/toor1.jpeg',
              old_price: 74,
              new_price: 66,
              nxt_page: ToorDal(),
              text: 'Tata Sampann Toor Dal                           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/chana1.jpeg',
              old_price: 72,
              new_price: 64,
              nxt_page: ChanaDal(),
              text: 'Tata Sampann Chana Dal                           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/moon1.jpeg',
              old_price: 70,
              new_price: 61,
              nxt_page: MoongDal(),
              text: 'Tata Sampann Moong Dal                           ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/soya1.jpeg',
              old_price: 82,
              new_price: 70,
              nxt_page: Soyachunks(),
              text: 'Fortune Soya Chunks                             ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/toor1.jpeg',
              old_price: 74,
              new_price: 66,
              nxt_page: ToorDal(),
              text: 'Tata Sampann Toor Dal                           ',
            ),
          ],
        ),
      ),
    );
  }
}