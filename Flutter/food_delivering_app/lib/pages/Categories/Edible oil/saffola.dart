import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Saffola extends StatelessWidget {
  const Saffola({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Saffola Gold Healthy Lifestyle Rice Bran Based Blended Oil 5 L',
          fdtitle: 'Superior quality product',
          description: 'Saffola Gold Pro Healthy Lifestyle Rice Bran Based Blended Oil is known because of its high smoke point, it is useful for high-heat cooking and is often used in various cuisines of South and East Asian countries. Choose Saffola Gold Blended Oil which partners on your journey for a healthy lifestyle. Buy Saffola Gold Pro Healthy Lifestyle Rice Bran Based Blended Oil online now!',
          brand_name: 'Saffola',
          manu: '	Marico Ltd.',
          address: 'Marico Ltd.Grande Palladium, 175 Cst Road, Kalina, Mumbai 400106',
          m_email: 'csc@marico.com',
          m_website: 'www.marico.com',
          net_quantity: '5 L',
          img1: 'assets/images/sg1.jpeg',
          img2: 'assets/images/sg2.jpeg',
          img3: 'assets/images/sg3.jpeg',
          img4: 'assets/images/sg4.jpeg',
          price: 959),
    );
  }
}