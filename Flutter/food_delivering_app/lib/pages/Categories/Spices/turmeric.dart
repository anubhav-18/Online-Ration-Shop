import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Turmeric extends StatelessWidget {
  const Turmeric({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
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
          img1: 'assets/images/turmeric1.jpeg',
          img2: 'assets/images/turmeric2.jpeg',
          img3: 'assets/images/turmeric3.jpeg',
          img4: 'assets/images/turmeric4.jpeg',
          price: 107),
    );
  }
}