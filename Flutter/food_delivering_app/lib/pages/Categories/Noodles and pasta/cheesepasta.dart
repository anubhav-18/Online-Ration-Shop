import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class CheesePasta extends StatelessWidget {
  const CheesePasta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Maggi Pazzta Cheese Macaroni 75 g',
          fdtitle: 'Made from the finest quality ingredients',
          description: 'Add a magical twist to your daily meal with Maggi Pazzta Cheese Macaroni. This pasta is delicious, quick and easy to make. The pasta is made with Semolina/ Rawa and is ready in just 5 minutes! It makes a great snacking option for those untimely hunger pangs or as a meal. Toss in some bell peppers or olives to make your pasta meal more wholesome and delicious! So go ahead, buy Maggi Pazzta Cheese Macaroni online today!',
          brand_name: '	Maggi',
          manu: 'Nestle India Ltd.',
          address: 'Nestle India Ltd.100/101, World Trade Centre, Barakhamba Lane, New Delhi-110001',
          m_email: 'wecare@in.nestle.com',
          m_website: '	www.nestle.in',
          net_quantity: '75 g',
          img1: 'assets/images/pasta1.jpeg',
          img2: 'assets/images/pasta2.jpeg',
          img3: 'assets/images/pasta3.jpeg',
          img4: 'assets/images/pasta4.jpeg',
          price: 24),
    );
  }
}