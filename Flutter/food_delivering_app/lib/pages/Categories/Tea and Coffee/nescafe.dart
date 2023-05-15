import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Nescafe extends StatelessWidget {
  const Nescafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
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
          img1: 'assets/images/nescafe1.jpeg',
          img2: 'assets/images/nescafe2.jpeg',
          img3: 'assets/images/nescafe3.jpeg',
          img4: 'assets/images/nescafe4.jpeg',
          price: 295),
    );
  }
}