import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class SaffolaActive extends StatelessWidget {
  const SaffolaActive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
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
