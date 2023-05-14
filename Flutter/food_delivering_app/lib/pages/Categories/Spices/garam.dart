import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Garam extends StatelessWidget {
  const Garam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Everest Garam Masala 100 g',
          fdtitle: 'Imparts a unique aroma and flavour',
          description: 'Garam Masala is the traditional backbone of every dish, be it snacks, authentic Indian or gourmet. It is usually added at the end of cooking to add a zing to the delicacies and to retain the warmness of spices. Use Everest Garam Masala to uplift the taste of your biryani, snack stuffing and veg & non-veg curries. Buy this product online today.',
          brand_name: 'Everest',
          manu: 'S Narendra Kumar & Co',
          address: 'Everest Food Products Pvt Ltd 4/B, Lbs Marg Vichroli West, Mumbai-400083, Maharashtra',
          m_email: 'customercare@everestspices.com',
          m_website: 'www.everestspices.com',
          net_quantity: '100 g',
          img1: 'assets/images/garam1.jpeg',
          img2: 'assets/images/garam2.jpeg',
          img3: 'assets/images/garam3.jpeg',
          img4: 'assets/images/garam4.jpeg',
          price: 81),
    );
  }
}