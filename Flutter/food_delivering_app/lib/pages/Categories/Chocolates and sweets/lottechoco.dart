import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class LotteChoco extends StatelessWidget {
  const LotteChoco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Lotte Choco Pie 28 g (12 pcs)',
          fdtitle: 'Hygienically packed',
          description:
              'Lotte India is a respectable player in the confectionery space instrumental in creating the '
              'Pie category and enjoys a near monopoly status. Lotte Choco Pie contains a handpicked delicious selection of the finest quality ingredients. They are incredibly indulgent and will satisfy any discerning chocoholic'
              's needs. Savour the taste of the smoothness, richness and creaminess with every bite. Let your taste buds sink with a delicious burst of chocolatey flavours. Buy this product online today.',
          brand_name: 'Lotte',
          manu: 'Lotte India Corporation Ltd.',
          address:
              'Lotte India Corporation Limited 4/111, Mount Poonamailee High Road, Manpakkam, Chennai - 600089, (TN). India.',
          m_email: 'support@lotteindia.com',
          m_website: 'https://www.lotteindia.com/',
          net_quantity: '336 g',
          img1: 'assets/images/productimages/lotte1.jpeg',
          img2: 'assets/images/productimages/lotte2.jpeg',
          img3: 'assets/images/productimages/lotte3.jpeg',
          img4: 'assets/images/productimages/lotte4.jpeg',
          price: 116),
    );
  }
}
