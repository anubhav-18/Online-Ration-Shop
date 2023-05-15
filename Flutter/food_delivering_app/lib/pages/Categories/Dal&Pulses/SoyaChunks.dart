import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Soyachunks extends StatelessWidget {
  const Soyachunks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Fortune Soya Wadi / Chunks 200 g',
          fdtitle: 'Consistency in taste and aroma',
          description: 'Fortune Soya Wadi / Chunks are light, soft and easy on your stomach. Does your family need champion wala dum aur yum? From biryanis to pulao and even Chinese fried rice, cooked soya chunks can be added to numerous rice dishes. Fortune Soya Chunk - ''Yum jo de champion ko dum'' so Buy Fortune Soya Wadi / Chunks online now!',
          brand_name: '	Fortune',
          manu: '	Adani Wilmar Ltd.',
          address: 'Adani Wilmar Ltd.Soya Complex, Sanchi Road Vidisha - 464001 Madhya Pradesh, India.',
          m_email: 'care@adaniwilmar.in',
          m_website: 'www.adaniwilmar.com',
          net_quantity: '200 g',
          img1: 'assets/images/productimages/soya1.jpeg',
          img2: 'assets/images/productimages/soya2.jpeg',
          img3: 'assets/images/productimages/soya3.jpeg',
          img4: 'assets/images/productimages/soya4.jpeg',
          price: 55),
    );
  }
}
