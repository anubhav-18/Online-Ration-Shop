import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class MoongDal extends StatelessWidget {
  const MoongDal ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Tata Sampann Unpolished Moong Dal 1 kg',
          fdtitle: 'Hygienically packed',
          description: 'An Indian meal is incomplete without a healthy bowl of dal in it. Moong is a wellspring of taste. From a very known moong dal halwa to healthy salads, dosa, subzi and snacks can bemade using moong dal. One of the healthy option for your hunger could be any quick moong dal recepie. Temper the moong dal with chillies, fried onions and tomatoes and serve it hot with rotis or steamed rice. Buy Tata Sampann Unpolished Moong Dal online now!',
          brand_name: 'Tata Sampann',
          manu: 'Tata Consumer Products Ltd.',
          address: 'Tata Chemicals Limited Bombay House, 24 Homi Mody Street, Fort, Mumbai, Maharashta - 400001.',
          m_email: 'care@tataconsumer.com',
          m_website: 'www.tatasalt.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/moon1.jpeg',
          img2: 'assets/images/productimages/moon2.jpeg',
          img3: 'assets/images/productimages/moon3.jpeg',
          img4: 'assets/images/productimages/moon4.jpeg',
          price: 141),
    );
  }
}
