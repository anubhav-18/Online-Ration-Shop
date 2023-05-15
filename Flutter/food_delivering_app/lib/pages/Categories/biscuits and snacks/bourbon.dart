import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Bourbon extends StatelessWidget {
  const Bourbon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Britannia Bourbon The Original Cream Biscuits 150 g',
          fdtitle:
              'Creamy and chocolaty inside,Crunchy on the outside,Sprinkled with sugar crystals,Enjoy sweet moments,Made for chocolate lovers,From the house of Britannia',
          description:
              'Britannia Bourbon Chocolate Cream are a delightful combination of smooth chocolate cream with crunchy chocolate biscuits topped with sparkling sugar crystals. Every bite of these delicious, chocolaty and indulgent cookies entices you for more and more. The satisfying and rich taste of chocolate enclosed in crispy, crunchy biscuits gives you a mouth-watering experience. Britannia biscuits, cookies, cakes and rusk are a perfect companion for your tea. Believing in delivering fresh and delicious products, Britannia India manufactures some of India'
              's favourite brands like Good Day, Tiger, NutriChoice, Bourbon, Milk Bikis and Marie Gold.',
          brand_name: 'Britannia',
          manu: 'Britannia Industries Ltd.',
          address:
              'Britannia Industrial Ltd.Mfg :Eastern Agro Foods Pvt. Ltd, Takai Adoshi Road, Po Sajangoan, Village Dekhu, Dist. Raigarh 4123, Maharashtra',
          m_email: 'feedback@britindia.com',
          m_website: 'www.britannia.co.in',
          net_quantity: '150 g',
          img1: 'assets/images/b1.jpeg',
          img2: 'assets/images/b2.jpeg',
          img3: 'assets/images/b3.jpeg',
          img4: 'assets/images/b4.jpeg',
          price: 30),
    );
  }
}
