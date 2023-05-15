import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Fanta extends StatelessWidget {
  const Fanta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Fanta Orange 2.25 L',
          fdtitle: 'Packed in hygienic conditions',
          description: 'Delight your guests with Fanta Orange. It is the perfect drink for any weather. Gatherings are incomplete without it. One glass is never enough! So go ahead buy this product online today.',
          brand_name: 'Fanta',
          manu: 'Coca-Cola India Pvt. Ltd.',
          address: 'Hindustan Coca Cola Beverages Pvt Ltd.Plot No 18, Bidadi Industrial Area, Bidadi Hobli, Bangalore Rural, Karnataka - 562109',
          m_email: 'indiahelpline@coca-cola.com',
          m_website: 'www.coca-cola.com',
          net_quantity: '2.25 L',
          img1: 'assets/images/fanta1.jpeg',
          img2: 'assets/images/fanta2.jpeg',
          img3: 'assets/images/fanta3.jpeg',
          img4: 'assets/images/fanta4.jpeg',
          price: 89),
    );
  }
}