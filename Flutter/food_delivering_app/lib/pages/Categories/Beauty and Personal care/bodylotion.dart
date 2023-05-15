import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class BodyLotion extends StatelessWidget {
  const BodyLotion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Nivea Body Milk Nourishing Body Lotion with 2x Almond Oil for 48H Moisturization for Very Dry Skin 400 ml',
          fdtitle: 'Suitable for very dry skin ,Provides 24 hours moisturization',
          description: 'Get even toned and nourished skin withNivea Body Milk Nourishing Body Lotion with 2x Almond Oil for 48H Moisturization for Very Dry Skin. This body lotion helps you get a perfectly moisturized skin during winters. It is enriched with the goodness of Almond oil that helps you keep your skin hydrated. So what are you waiting for? Try this product today. Buy it online here!',
          brand_name: 'Nivea',
          manu: 'Nivea India Pvt. Ltd.',
          address: 'Nivea India Pvt. Ltd.Sm-9/1. Sanand Ii Industrial Estate, Vilk Bol Tal Sanand Dist, Ahemdabad(Gujarat)-382110.',
          m_email: 'care@beiersdorf.com',
          m_website: 'www.nivea.in',
          net_quantity: '400 ml',
          img1: 'assets/images/productimages/lotion1.jpeg',
          img2: 'assets/images/productimages/lotion2.jpeg',
          img3: 'assets/images/productimages/lotion3.jpeg',
          img4: 'assets/images/productimages/lotion4.jpeg',
          price: 276),
    );
  }
}
