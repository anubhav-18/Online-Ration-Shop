import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Cleaning%20essentials/Vim.dart';
import 'package:food_delivering_app/pages/Categories/Cleaning%20essentials/cleaner.dart';
import 'package:food_delivering_app/pages/Categories/Cleaning%20essentials/harpic.dart';
import 'package:food_delivering_app/pages/Categories/Cleaning%20essentials/surf.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class CleanList extends StatefulWidget {
  const CleanList({super.key});

  @override
  State<CleanList> createState() => _CleanList();
}

class _CleanList extends State<CleanList> {
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
          'Cleaning Essentials',
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
              img: 'assets/images/productimages/lizol1.jpeg',
              old_price: 211,
              new_price: 169,
              nxt_page: Cleaner(),
              text: 'Lizol Floor Cleaner Solution                    ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/harpic1.jpeg',
              old_price: 86,
              new_price: 78,
              nxt_page: Harpic(),
              text: 'Harpic Cleaner                                       ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/surf1.jpeg',
              old_price: 201,
              new_price: 235,
              nxt_page: Surf(),
              text: 'Surf Excel Matic Detergent (6 kg)        ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/vim1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Vim(),
              text: 'Vim Dish Cleaning Solution                                             ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/lizol1.jpeg',
              old_price: 211,
              new_price: 169,
              nxt_page: Cleaner(),
              text: 'Lizol Floor Cleaner Solution                    ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/harpic1.jpeg',
              old_price: 86,
              new_price: 78,
              nxt_page: Harpic(),
              text: 'Harpic Cleaner                                       ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/surf1.jpeg',
              old_price: 201,
              new_price: 235,
              nxt_page: Surf(),
              text: 'Surf Excel Matic Detergent (6 kg)        ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/vim1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: Vim(),
              text: 'Vim Dish Cleaning Solution                                             ',
            ),
          ],
        ),
      ),
    );
  }
}