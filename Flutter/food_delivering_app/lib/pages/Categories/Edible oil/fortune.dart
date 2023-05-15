import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Fortune extends StatelessWidget {
  const Fortune({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        centerTitle: true,
        backgroundColor: bckGrndColor,
        title: Text('Grocers'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
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
      body: productdescp(
          title: 'Fortune Sunlite Refined Sunflower Oil 1 L',
          fdtitle: 'Known as best oil for cooking',
          description: 'Fortune Sunlite Refined Sunflower Oil is one of the most commonly used ingredients in an Indian household. This Oil is ideal for your cooking needs. Use sunflower oil for roast potatoes, Yorkshire puddings, stir-frying vegetables or even in bakes as a replacement for butter. Buy Fortune Sunlite Refined Sunflower',
          brand_name: '	Fortune',
          manu: 'Adani Wilmar Ltd.',
          address: 'Adani Wilmar Ltd.Mantralayam (R S), Tungabhadra (P O), Kurnool- 518397',
          m_email: 'care@adaniwilmar.in',
          m_website: 'www.adaniwilmar.com',
          net_quantity: '1 L',
          img1: 'assets/images/productimages/fortune1.jpeg',
          img2: 'assets/images/productimages/fortune2.jpeg',
          img3: 'assets/images/productimages/fortune3.jpeg',
          img4: 'assets/images/productimages/fortune4.jpeg',
          price: 127),
    );
  }
}
