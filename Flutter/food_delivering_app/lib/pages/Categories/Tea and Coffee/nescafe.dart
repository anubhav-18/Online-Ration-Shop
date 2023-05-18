import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Nescafe extends StatelessWidget {
  const Nescafe({Key? key}) : super(key: key);

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
          title: 'Nescafe Classic Instant Coffee 95 g',
          fdtitle: 'Refreshing blend of freshness & unmatched quality',
          description: 'Start your day right with the first sip of Nescafe Classic Instant Coffee. Let the intense taste of coffee awaken your mind and body to new opportunities as the rich aroma of this distinctive blend unfolds. This is made of quality Robusta beans and it is roasted to medium-dark colour to deliver deliciousness and a pleasurable and exclusive experience! So go ahead and order this product online today!',
          brand_name: 'Nescafe',
          manu: 'Nestle India Ltd.',
          address: 'Nestle India Ltd.Nestle India Limited, 100/101, World trade Center, Barakhmba Lane, New Delhi - 100001',
          m_email: 'wecare@in.nestle.com',
          m_website: 'www.nestle.in',
          net_quantity: '95 g',
          img1: 'assets/images/productimages/nescafe1.jpeg',
          img2: 'assets/images/productimages/nescafe2.jpeg',
          img3: 'assets/images/productimages/nescafe3.jpeg',
          img4: 'assets/images/productimages/nescafe4.jpeg',
          price: 295),
    );
  }
}
