import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Turmeric extends StatelessWidget {
  const Turmeric({Key? key}) : super(key: key);

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
          title: 'Catch Turmeric Powder 500 g',
          fdtitle: 'Rich aroma',
          description: 'Turmeric or Haldi is an essential ingredient in Indian cuisine. Catch Turmeric Powder is not only used for its flavour and aroma but also for its health benefits. It has antiseptic qualities as well as properties of a flavouring agent and is also a natural beauty aid. It gives musky flavour and yellow colour to curries. Buy this product online today.',
          brand_name: 'Catch',
          manu: 'Ds Spiceco Pvt. Ltd.',
          address: 'Gobind Ram Kahan Chand Plot No-7, Phase-4 Sector 57 Hsiidc, Kundli, Phase IV, Sonipat, Haryana 131028',
          m_email: 'foods@dsgroup.com',
          m_website: 'www.catchfoods.com',
          net_quantity: '100 g',
          img1: 'assets/images/productimages/turmeric1.jpeg',
          img2: 'assets/images/productimages/turmeric2.jpeg',
          img3: 'assets/images/productimages/turmeric3.jpeg',
          img4: 'assets/images/productimages/turmeric4.jpeg',
          price: 107),
    );
  }
}
