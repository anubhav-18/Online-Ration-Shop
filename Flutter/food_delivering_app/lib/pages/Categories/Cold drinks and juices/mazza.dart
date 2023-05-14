import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Mazza extends StatelessWidget {
  const Mazza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Maaza Mango Drink 600 ml',
          fdtitle: 'Packed in hygienic conditions',
          description: 'Turn your day around with Maaza Mango Drink! All it takes is a glass and a bit of ice. Delicious and refreshing - there''s no other way to describe it. So go ahead, buy this product online today!',
          brand_name: 'Maaza',
          manu: 'Coca-Cola India Pvt. Ltd.',
          address: 'Hindustan Coca Cola Beverages Pvt Ltd.Plot No 18, Bidadi Industrial Area, Bidadi Hobli, Bangalore Rural, Karnataka - 562109',
          m_email: 'indiahelpline@coca-cola.com',
          m_website: 'www.coca-cola.com',
          net_quantity: '600 Ml',
          img1: 'assets/images/mazza1.jpeg',
          img2: 'assets/images/mazza2.jpeg',
          img3: 'assets/images/mazza3.jpeg',
          img4: 'assets/images/mazza4.jpeg',
          price: 36),
    );
  }
}