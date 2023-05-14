import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Soap extends StatelessWidget {
  const Soap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Himalaya Gentle Baby Soap 75 g (Pack of 4)',
          fdtitle: 'Nourishes baby''s skin',
          description: 'Pamper your baby''s delicate and soft skin with Himalaya Gentle Baby Soap 75 g (Pack of 4). It  moisturizes your baby''s gentle skin and keeps it soft. Make bath-time of your baby the best part of your day. So go ahead and buy this product online today!',
          brand_name: 'Himalaya',
          manu: 'The Himalaya Drug Company',
          address: 'Tumkur Road, Makali, Bangalore - 562162',
          m_email: 'care@himalayawellness.com',
          m_website: 'https://www.himalayawellness.com/',
          net_quantity: '75 g',
          img1: 'assets/images/hs1.jpeg',
          img2: 'assets/images/hs2.jpeg',
          img3: 'assets/images/hs3.jpeg',
          img4: 'assets/images/hs4.jpeg',
          price: 162),
    );
  }
}