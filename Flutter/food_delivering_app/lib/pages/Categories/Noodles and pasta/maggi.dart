import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Maggi extends StatelessWidget {
  const Maggi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Maggi 2-Minute Masala Instant Noodles 560 g',
          fdtitle: 'Made from the finest quality ingredients',
          description: 'Maggi 2-Minutes Noodles have been a classic Indian snack for a good few decades now. Nestle brings you another delicious instant food product - Maggi 2-Minute Masala Instant Noodles! These Maggi noodles offer you the delicious masala flavour that will leave you wanting for more. It is not just loved by young ones but adults too. For every busy day or lazy evening, these noodles are easy to make and are perfect for those untimely hunger pangs. They are made from all-natural ingredients and offer you a lip-smacking taste as they are loaded with authentic flavours. So go ahead, buy Maggi 2-Minute Masala Instant Noodle online today!',
          brand_name: '	Maggi',
          manu: 'Nestle India Ltd.',
          address: 'Nestle India Ltd.100/101, World Trade Centre, Barakhamba Lane, New Delhi-110001',
          m_email: 'wecare@in.nestle.com',
          m_website: '	www.nestle.in',
          net_quantity: '560 g',
          img1: 'assets/images/maggi1.jpeg',
          img2: 'assets/images/maggi2.jpeg',
          img3: 'assets/images/maggi3.jpeg',
          img4: 'assets/images/maggi4.jpeg',
          price: 96),
    );
  }
}