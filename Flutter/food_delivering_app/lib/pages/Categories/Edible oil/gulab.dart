import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Gulab extends StatelessWidget {
  const Gulab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Gulab Gold Filtered Groundnut Oil 15 L',
          fdtitle: 'Hygienically packed',
          description: 'Gulab Double Filtered Groundnut Oil is good for preparing sweets and savouries. It is used to enhance the flavour and taste of food. You can use it to saute or stir-fry vegetables, and its aromatic qualities. Indian veg food recipes can taste even better with groundnut oil. Buy Gulab Double Filtered Groundnut Oil online now.',
          brand_name: 'Gulab',
          manu: 'Gulab Oil And Food (Ahmedabad) Pvt. Ltd.',
          address: 'Gulab Oil & Food Industries R. V. Estate Unit 1, Near Sai Service, Satiwali, Vashi East- Palghar 401208',
          m_email: 'gulaboils@yahoo.com',
          m_website: 'www.gulab.com',
          net_quantity: '15 L',
          img1: 'assets/images/productimages/gulab1.jpeg',
          img2: 'assets/images/productimages/gulab2.jpeg',
          img3: 'assets/images/productimages/gulab3.jpeg',
          img4: 'assets/images/productimages/gulab4.jpeg',
          price: 2799),
    );
  }
}
