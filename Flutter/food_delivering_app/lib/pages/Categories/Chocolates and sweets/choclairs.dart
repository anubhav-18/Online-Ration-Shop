import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Choclairs extends StatelessWidget {
  const Choclairs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Cadbury Gold Choclairs 605 g (Pack of 110)',
          fdtitle: 'Hygienically packed',
          description: 'Nobody can get enough of Cadbury Gold Choclairs. When it comes to candies and toffees, there is no age group. Savour in solitude or share it with your friends and family - either way, it tastes irresistible. So go ahead, buy this product online today!',
          brand_name: 'Cadbury',
          manu: 'Mondelez India Foods Pvt. Ltd.',
          address: 'Mondelez India Foods Private Limited Unit No. 2001, 20Th Floor, Tower - 3 (Wing C), Indiabulls Finance Centre, Parel Mumbai - 400 013.',
          m_email: 'suggestions@mdlzindia.com',
          m_website: 'www.mdlzindia.com',
          net_quantity: '605 g',
          img1: 'assets/images/cl1.jpeg',
          img2: 'assets/images/cl2.jpeg',
          img3: 'assets/images/cl3.jpeg',
          img4: 'assets/images/cl4.jpeg',
          price: 160),
    );
  }
}