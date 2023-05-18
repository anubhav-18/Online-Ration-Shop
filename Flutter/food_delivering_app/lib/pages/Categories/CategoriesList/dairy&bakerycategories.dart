import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Diary%20product/AmulButter.dart';
import 'package:food_delivering_app/pages/Categories/Diary%20product/AmulChesse.dart';
import 'package:food_delivering_app/pages/Categories/Diary%20product/AmulKool.dart';
import 'package:food_delivering_app/pages/Categories/Diary%20product/AmulMasti.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';

class DairyNBakeyCategories extends StatefulWidget {
  const DairyNBakeyCategories({super.key});

  @override
  State<DairyNBakeyCategories> createState() => _DairyNBakeyCategories();
}

class _DairyNBakeyCategories extends State<DairyNBakeyCategories> {
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
          'Dairy & Bakery',
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
              img: 'assets/images/productimages/amulbutter1.jpeg',
              old_price: 60,
              new_price: 54,
              nxt_page: AmulButter(),
              text: 'Amul Butter 100 g (Carton)',
            ),
            ProductListTile(
              img: 'assets/images/productimages/amulcheese1.jpeg',
              old_price: 560,
              new_price: 530,
              nxt_page: AmulCheese(),
              text: 'Amul Blend Diced Cheese 1 kg (Pouch)',
            ),
            ProductListTile(
              img: 'assets/images/productimages/amulmast1.jpeg',
              old_price: 60,
              new_price: 55,
              nxt_page: AmulMasti(),
              text: 'Amul Masti Spiced Buttermilk 1 L (Tetra Pak)',
            ),
            ProductListTile(
              img: 'assets/images/productimages/product1.jpeg',
              old_price: 25,
              new_price: 22,
              nxt_page: AmulKool(),
              text: 'Amul Kool Kesar Flavoured Milk 180 ml (Bottle)',
            ),
            ProductListTile(
              img: 'assets/images/productimages/amulbutter1.jpeg',
              old_price: 60,
              new_price: 54,
              nxt_page: AmulButter(),
              text: 'Amul Butter 100 g (Carton)',
            ),
            ProductListTile(
              img: 'assets/images/productimages/amulcheese1.jpeg',
              old_price: 560,
              new_price: 530,
              nxt_page: AmulCheese(),
              text: 'Amul Blend Diced Cheese 1 kg (Pouch)',
            ),
            ProductListTile(
              img: 'assets/images/productimages/amulmast1.jpeg',
              old_price: 60,
              new_price: 55,
              nxt_page: AmulMasti(),
              text: 'Amul Masti Spiced Buttermilk 1 L (Tetra Pak)',
            ),
            ProductListTile(
              img: 'assets/images/productimages/product1.jpeg',
              old_price: 25,
              new_price: 22,
              nxt_page: AmulKool(),
              text: 'Amul Kool Kesar Flavoured Milk 180 ml (Bottle)',
            ),
          ],
        ),
      ),
    );
  }
}