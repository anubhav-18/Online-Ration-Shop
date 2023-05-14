import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Salt extends StatelessWidget {
  const Salt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Tata Iodised Salt 1 kg',
          fdtitle: 'Natural and organic',
          description: 'Tata Iodised Salt is one of the most important ingredients used in Indian households. It adds a flavour to your dishes. Used to make almost every food item, and also known as the preservatives in pickels. Buy Tata Iodised Salt online now.',
          brand_name: 'Tata',
          manu: 'Tata Consumer Products Ltd.',
          address: 'Tata Chemicals Limited P.O. Mithapur, Dist. Dev Bhumi Dwarka, Gujarat - 361345',
          m_email: 'care@tataconsumer.com',
          m_website: 'www.tatasalt.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/ts1.jpeg',
          img2: 'assets/images/ts2.jpeg',
          img3: 'assets/images/ts3.jpeg',
          img4: 'assets/images/ts4.jpeg',
          price: 25),
    );
  }
}