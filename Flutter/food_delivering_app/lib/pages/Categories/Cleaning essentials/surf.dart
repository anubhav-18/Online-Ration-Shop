import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Surf extends StatelessWidget {
  const Surf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Surf Excel Matic Top Load Detergent Powder 6 kg',
          fdtitle: 'Removes tough stains',
          description: 'Keep clothes looking fresh and clean with Surf Excel Matic Top Load Detergent Powder that ensures tough stain removal from your clothes. This detergent powder is suitable for both your white and coloured clothes. It removes dirt from clothes, thereby removing dullness from them and leaving a pleasant fragrance. So go ahead and buy this product online today!',
          brand_name: 'Surf Excel',
          manu: 'Hindustan Unilever Ltd.',
          address: 'Hul Silvassa, Detergent Factory-Unit 1, Survey No. 151/1/1, Village-Dapada, Khanvel Road, Silvassa-396230',
          m_email: '	lever.care@unilever.com',
          m_website: 'www.hul.co.in',
          net_quantity: '6 Kg',
          img1: 'assets/images/surf1.jpeg',
          img2: 'assets/images/surf2.jpeg',
          img3: 'assets/images/surf3.jpeg',
          img4: 'assets/images/surf4.jpeg',
          price: 1031),
    );
  }
}