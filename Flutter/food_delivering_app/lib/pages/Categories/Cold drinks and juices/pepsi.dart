import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Pepsi extends StatelessWidget {
  const Pepsi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Pepsi 2.25 L',
          fdtitle: 'Refreshing blend of freshness & unmatched quality',
          description: 'Delight your guests with Pepsi. It is the perfect drink for any weather and gatherings are incomplete without it. One glass is never enough! So go ahead buy this product online today.',
          brand_name: 'Pepsi',
          manu: 'Varun Beverages Ltd.',
          address: 'Pepsico India Ltd.Po Box 27, Dlf Qutub Enclave - 1, Gurgoan - 122002, Haryana',
          m_email: 'customer.feedback@pepsico.com',
          m_website: 'https://varunpepsi.com/',
          net_quantity: '2.25 L',
          img1: 'assets/images/pepsi1.jpeg',
          img2: 'assets/images/pepsi2.jpeg',
          img3: 'assets/images/pepsi3.jpeg',
          img4: 'assets/images/pepsi4.jpeg',
          price: 64),
    );
  }
}