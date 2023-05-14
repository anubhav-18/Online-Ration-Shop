import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class DarkFantasy extends StatelessWidget {
  const DarkFantasy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Sunfeast Dark Fantasy Original Choco Filled Cookie 300 g',
          fdtitle: 'Made from the finest quality ingredients',
          description: 'Give in to your sweet cravings with Sunfeast Dark Fantasy Original Choco Filled Cookie. These cookies are crunchy yet delicate in texture. They are a perfect accompaniment to your tea or coffee. They are prepared using the finest ingredients and its hygienic packaging ensures that they remain fresh over a longer period. So go ahead, buy Sunfeast Dark Fantasy Original Choco Filled Cookie online today!',
          brand_name: 'Sunfeast',
          manu: 'ITC Ltd.',
          address: 'Itc Limited Division Plot No 1 Sector 11, Bhel, Haridwar 249403',
          m_email: 'itccares@itc.in',
          m_website: 'www.aashirvaad.com',
          net_quantity: '300 g',
          img1: 'assets/images/df1.jpeg',
          img2: 'assets/images/df2.jpeg',
          img3: 'assets/images/df3.jpeg',
          img4: 'assets/images/df4.jpeg',
          price: 112),
    );
  }
}