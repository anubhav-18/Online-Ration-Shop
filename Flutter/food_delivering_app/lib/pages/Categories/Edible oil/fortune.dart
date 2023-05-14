import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Fortune extends StatelessWidget {
  const Fortune({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
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
          img1: 'assets/images/fortune1.jpeg',
          img2: 'assets/images/fortune2.jpeg',
          img3: 'assets/images/fortune3.jpeg',
          img4: 'assets/images/fortune4.jpeg',
          price: 127),
    );
  }
}