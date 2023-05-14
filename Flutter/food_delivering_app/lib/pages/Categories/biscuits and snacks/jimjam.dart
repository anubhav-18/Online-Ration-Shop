import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class JimJam extends StatelessWidget {
  const JimJam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Britannia Jimjam Sandwich Biscuits 138 g',
          fdtitle: 'Cream sandwiched between crispy biscuits,Topped with a juicy jam and sugar crystals.Enjoy with a glass of milk or just like that,Lip-smacking flavor, cool shapes and soft cream,Popular with the kids',
          description: 'Britannia Jimjam Sandwich Biscuits are loved by people of almost all age groups. The crispy texture of biscuit is complemented by the sweet flavour of cream inside and top of all the jam at the center top sprinkled with the sugar crystals to make this biscuit best of all. Britannia biscuits and cookies for long has been a part of every home, sharing those moments of joy. Go ahead & buy this product online today!',
          brand_name: 'Britannia',
          manu: 'Britannia Industries Ltd.',
          address: 'Britannia Industrial Ltd.Mfg :Eastern Agro Foods Pvt. Ltd, Takai Adoshi Road, Po Sajangoan, Village Dekhu, Dist. Raigarh 4123, Maharashtra',
          m_email: 'feedback@britindia.com',
          m_website: 'www.britannia.co.in',
          net_quantity: '138 g',
          img1: 'assets/images/jj1.jpeg',
          img2: 'assets/images/jj2.jpeg',
          img3: 'assets/images/jj3.jpeg',
          img4: 'assets/images/jj4.jpeg',
          price: 25),
    );
  }
}