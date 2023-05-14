import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
class Wagh extends StatelessWidget {
  const Wagh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Wagh Bakri Leaf Tea 1 kg',
          fdtitle: 'Premium and Strong Tea',
          description: 'Wagh Bakri Leaf Tea 1 kg is your best bet to start your mornings peacefully. Even during work hours or at night, a cup of this tea is just the kick your brain needs. It is made from the finest quality of tea leaves and has a strong aroma to make a perfect cup of tea. So go ahead, buy this product online today!',
          brand_name: 'Wagh Bakri',
          manu: 'Gujarat Tea Processors And Packers Ltd.',
          address: 'Gujarat Tea Processors & Packers Ltd.Wagh Bakri House, Ambawadi, Ahmedabad - 380006',
          m_email: 'nishantyaddla@gmail.com',
          m_website: 'https://www.waghbakritea.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/wb1.jpeg',
          img2: 'assets/images/wb2.jpeg',
          img3: 'assets/images/wb3.jpeg',
          img4: 'assets/images/wb4.jpeg',
          price: 475),
    );
  }
}