import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Cashew extends StatelessWidget {
  const Cashew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Happilo 500 g Premium Whole Cashews',
          fdtitle: 'DELICIOUS TASTE - Rich, buttery and delicious and perfect for making raw cashew milk or snacking. Excellent source of protein, fiber and minerals. Suitable for vegetarians.,GOOD SOURCE OF PROTEIN - Cashew nuts are low in sugar and rich in fibre, heart-healthy fats, and plant protein. Good for an active life style, perfect for snacking,VEGETARIAN & VEGAN – Happilo Cashew Nuts are 100% vegetarian and vegan - Vegetarian & vegan diets are richer in certain nutrients and have a number of health benefits,NON-GMO - Vegan, Non-GMO Verified and fat free with no preservatives or added sugar. We never add any unnecessary sweeteners or colorants to our products.',
          description: 'Cashews are an incredible nutritional powerhouse with Iron, Copper, Zinc, Phosphorus, Magnesium, Selenium. Rice sources of antioxidants, minerals and vitamins, Cashews have a rich nutty flavor, similar to almonds or peanuts. When pureed, it may be hard to distinguish cashew butter from other nut butter like peanut or almond.Swapping out cashews depends on how you are using them. If you are using the cashews as nuts in a trail mix or other nut-based recipe, try pine nuts, almonds, walnuts, hazelnuts, or sunflower seeds. If you are swapping the cashews for some other vegan/vegetarian puree, try a combination of zucchini and macadamia nuts or silken tofu.',
          brand_name: '	HAPPILO',
          manu: 'Happilo International Pvt Ltd',
          address: 'Happilo International Pvt Ltd.17/A1, Maruti Arcade, Behind Reliance Petrol bunk, Industrial Suburb 2nd Stage, Yeswanthpur, Bengaluru,Karnataka - 560022',
          m_email: 'info@happilo.com',
          m_website: 'www.happilo.com',
          net_quantity: '500 g',
          img1: 'assets/images/productimages/cashew1.jpeg',
          img2: 'assets/images/productimages/cashew2.jpeg',
          img3: 'assets/images/productimages/cashew3.jpeg',
          img4: 'assets/images/productimages/cashew4.jpeg',
          price: 384),
    );
  }
}
