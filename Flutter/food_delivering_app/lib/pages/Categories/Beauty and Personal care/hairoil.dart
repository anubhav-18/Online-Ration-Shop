import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';

class HairOil extends StatelessWidget {
  const HairOil({Key? key}) : super(key: key);

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
          title: 'Parachute 100% Pure Coconut Hair Oil 600 ml',
          fdtitle: 'Nourishes the scalp',
          description:
              'Tired of dull and frizzy hair? Hair oil plays a vital role in protecting your hair from regular wear and tear. Parachute 100% Pure Coconut Hair Oil gives your hair the much needed nourishment and protects it from further damage. It can be used for a deep relaxing massage before washing your hair or to tame your hair before styling. Give your hair the care it deserves by making this a part of your hair care regime. So what are you waiting for? Buy this product online at the best rate, right here!',
          brand_name: 'Parachute',
          manu: 'Marico Ltd.',
          address:
              ' Marico Ltd.Plot No.Ff 06, P.V.Palayam Po Sipcot Industrial Growth Center, Perundurai-638052',
          m_email: 'csc@marico.com',
          m_website: 'www.marico.com',
          net_quantity: '600 ml',
          img1: 'assets/images/productimages/hairoil1.jpeg',
          img2: 'assets/images/productimages/hairoil2.jpeg',
          img3: 'assets/images/productimages/hairoil3.jpeg',
          img4: 'assets/images/productimages/hairoil4.jpeg',
          price: 200),
    );
  }
}
