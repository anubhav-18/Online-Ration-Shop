import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

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
          img1: 'assets/images/jeera1.jpeg',
          img2: 'assets/images/jeera2.jpeg',
          img3: 'assets/images/jeera3.jpeg',
          img4: 'assets/images/jeera4.jpeg',
          price: 67),
    );
  }
}