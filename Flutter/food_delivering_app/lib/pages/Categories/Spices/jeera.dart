import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Jeera extends StatelessWidget {
  const Jeera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Catch Jeera Powder 100 g',
          fdtitle: 'Distinctive flavour and aroma',
          description: 'The Indian spice rack is incomplete without a jar of jeera powder in it. Jeera powder gives a flavourful touch to every preparation. Use Catch Jeera Powder to lend your dish with a slightly pungent and aromatic twist. Buy this product online today.',
          brand_name: 'Catch',
          manu: 'Ds Spiceco Pvt. Ltd.',
          address: 'DS Spiceco Pvt. Ltd. A-48, 49, Sector-4, Noida-201301, U.P.',
          m_email: 'foods@dsgroup.com',
          m_website: 'www.catchfoods.com',
          net_quantity: '100 g',
          img1: 'assets/images/productimages/jeera1.jpeg',
          img2: 'assets/images/productimages/jeera2.jpeg',
          img3: 'assets/images/productimages/jeera3.jpeg',
          img4: 'assets/images/productimages/jeera4.jpeg',
          price: 67),
    );
  }
}
