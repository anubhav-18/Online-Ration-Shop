import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Pista extends StatelessWidget {
  const Pista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'GreenFinity 100% Iranian Pistachios Roasted & Salted, 500g [Jar Pack].',
          fdtitle: 'Pistachios are one of the few nuts that contain most of the nutrients such as carbohydrates, protein, fats and dietary fibre',
          description: 'GreenFinity Pistachios are roasted to perfection with just a touch of salt. Our version of classic pistachios is ideal for everyday snacking. The size of Pistachios is Jumbo and you will never spot a closed mouthed pistachio in the pack. Pistachios Health Benefits: Healthy Heart Anti-inflammation Properties Hemoglobin and Blood Nervous System Macular Degeneration .Boosts Immunity Healthy Brain Pistachios are a wonderful, fun & Tasty snack, which are lightly salted. Crack open the shells to treat your taste buds for a snacking sensation.',
          brand_name: '	GreenFinity',
          manu: 'Minerva Tradewell',
          address: 'Minerva Tradewell F-869, Rd Number 14, Vishwakarma Industrial Area, Jaipur, Rajasthan 302013',
          m_email: 'greenfinity2018@gmail.com',
          m_website: 'https://thegreenfinity.com/',
          net_quantity: '500 g',
          img1: 'assets/images/pista1.jpeg',
          img2: 'assets/images/pista2.jpeg',
          img3: 'assets/images/pista3.jpeg',
          img4: 'assets/images/pista4.jpeg',
          price: 589),
    );
  }
}