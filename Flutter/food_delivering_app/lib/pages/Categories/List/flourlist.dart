import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Atta&Flour/AashirvaadSuperior.dart';
import 'package:food_delivering_app/pages/Categories/Atta&Flour/Besan.dart';
import 'package:food_delivering_app/pages/Categories/Atta&Flour/Maida.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';
import 'package:food_delivering_app/pages/Categories/Atta&Flour/AaashirvaadSelect.dart';

class FlourList extends StatefulWidget {
  const FlourList({super.key});

  @override
  State<FlourList> createState() => _FlourList();
}

class _FlourList extends State<FlourList> {
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
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 331,
              new_price: 269,
              nxt_page: AashirvaadSelect(),
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/superior1.jpeg',
              old_price: 341,
              new_price: 301,
              nxt_page: AashirvaadSuperior(),
              text: 'Aashirvaad Superior Whole Wheat Atta 5 kg ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/besan1.jpeg',
              old_price: 65,
              new_price: 57,
              nxt_page: Besan(),
              text: 'Good Life Pure Besan                              ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/maida1.jpeg',
              old_price: 87,
              new_price: 79,
              nxt_page: Maida(),
              text: 'Pure White Maida                                             ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 331,
              new_price: 269,
              nxt_page: AashirvaadSelect(),
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/superior1.jpeg',
              old_price: 341,
              new_price: 301,
              nxt_page: AashirvaadSuperior(),
              text: 'Aashirvaad Superior Whole Wheat Atta 5 kg ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/besan1.jpeg',
              old_price: 65,
              new_price: 57,
              nxt_page: Besan(),
              text: 'Good Life Pure Besan                              ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/maida1.jpeg',
              old_price: 87,
              new_price: 79,
              nxt_page: Maida(),
              text: 'Pure White Maida                                             ',
            ),
          ],
        ),
      ),
    );
  }
}