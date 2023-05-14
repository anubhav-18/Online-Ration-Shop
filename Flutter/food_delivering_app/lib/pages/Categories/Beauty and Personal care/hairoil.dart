import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class HairOil extends StatelessWidget {
  const HairOil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Parachute 100% Pure Coconut Hair Oil 600 ml',
          fdtitle: 'Nourishes the scalp',
          description: 'Tired of dull and frizzy hair? Hair oil plays a vital role in protecting your hair from regular wear and tear. Parachute 100% Pure Coconut Hair Oil gives your hair the much needed nourishment and protects it from further damage. It can be used for a deep relaxing massage before washing your hair or to tame your hair before styling. Give your hair the care it deserves by making this a part of your hair care regime. So what are you waiting for? Buy this product online at the best rate, right here!',
          brand_name: 'Parachute',
          manu: 'Marico Ltd.',
          address:' Marico Ltd.Plot No.Ff 06, P.V.Palayam Po Sipcot Industrial Growth Center, Perundurai-638052',
          m_email: 'csc@marico.com',
          m_website: 'www.marico.com',
          net_quantity: '600 ml',
          img1: 'assets/images/hairoil1.jpeg',
          img2: 'assets/images/hairoil2.jpeg',
          img3: 'assets/images/hairoil3.jpeg',
          img4: 'assets/images/hairoil4.jpeg',
          price: 200),
    );
  }
}