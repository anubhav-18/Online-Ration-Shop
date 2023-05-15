import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class CereGrow extends StatelessWidget {
  const CereGrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Nestle Ceregrow Multigrain Cereal with Milk & Fruits (2-5 Years) 300 g',
          fdtitle: 'Rich in iron',
          description: 'Nestle Ceregrow Multigrain Cereal with Milk & Fruits is a nutritious & tasty breakfast cereal for children between 2 to 5 years. It is packed with the nourishment of multiple food groups and is a source of 17 vitamins & minerals assuring nutrition with every bowl for your growing kid. So go ahead and buy this product online today!',
          brand_name: '	Nestle',
          manu: '	Nestle India Ltd.',
          address: 'Nestle India Ltd.100/101, World Trade Centre, Barakhamba Lane, New Delhi-110001',
          m_email: 'wecare@in.nestle.com',
          m_website: 'www.nestle.in',
          net_quantity: '300 g',
          img1: 'assets/images/productimages/cg1.jpeg',
          img2: 'assets/images/productimages/cg2.jpeg',
          img3: 'assets/images/productimages/cg3.jpeg',
          img4: 'assets/images/productimages/cg4.jpeg',
          price: 316),
    );
  }
}
