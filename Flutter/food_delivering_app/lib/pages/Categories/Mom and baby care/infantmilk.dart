import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class InfantMilk extends StatelessWidget {
  const InfantMilk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Amulspray Infant Milk Food Tin Pack 500 g',
          fdtitle: 'This is a vegetarian product',
          description: 'Amulspray Infant Milk Food is a good source of fortified vitamins and minerals for your small baby. It is fortified with Vitamins- A, D, K, B12 Group, C and Minerals; Calcium, Magnesium, Phosphorus, Iron, Copper, Iodine, Manganese, and Zinc. So go ahead and buy this product online today! Important Notice: Mother''s Milk is best for your baby.',
          brand_name: 'Amul',
          manu: 'GCMMF Ltd.',
          address: 'Mehsana District Co-operative Milk Products Union Ltd.Mehsana- 384002, India.',
          m_email: 'customercare@amul.coop',
          m_website: 'www.amul.com',
          net_quantity: '500 g',
          img1: 'assets/images/productimages/im1.jpeg',
          img2: 'assets/images/productimages/im2.jpeg',
          img3: 'assets/images/productimages/im3.jpeg',
          img4: 'assets/images/productimages/im4.jpeg',
          price: 230),
    );
  }
}
