import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class SaffolaActive extends StatelessWidget {
  const SaffolaActive({Key? key}) : super(key: key);

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
          title: 'Saffola Active Pro Weight Watchers Rice Bran Based Blended Oil 1 L',
          fdtitle: 'Superior quality product',
          description: 'Saffola Active Pro Weight Watchers Rice Bran Based Blended Oil is the healthy choice of weight watchers. It contains a blend of Rice Brand and Soyabean oil. Make a healthy addition to your diet today with this oil and help your family stay fit always. It is used in recipes for baking, frying, searing, and more. Buy Saffola Active Pro Weight Watchers RiceBran Based Blended Oil online now!',
          brand_name: 'Saffola',
          manu: '	Marico Ltd.',
          address: 'Marico Ltd.Grande Palladium, 175 Cst Road, Kalina, Mumbai 400106',
          m_email: 'csc@marico.com',
          m_website: 'www.marico.com',
          net_quantity: '1 L',
          img1: 'assets/images/productimages/sa1.jpeg',
          img2: 'assets/images/productimages/sa2.jpeg',
          img3: 'assets/images/productimages/sa3.jpeg',
          img4: 'assets/images/productimages/sa4.jpeg',
          price: 129),
    );
  }
}
