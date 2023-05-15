import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class MaggiSpecial extends StatelessWidget {
  const MaggiSpecial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Maggi 2-Minute Special Masala Instant Noodles 70 g',
          fdtitle: 'Made from the finest quality ingredients',
          description: 'Nestlé Maggi Instant Noodles have been a classic Indian snack for more than three decades. To take your favourite masala taste experience to the next level, Maggi introduces the new Maggi 2-Minute Special Masala Instant Noodles, a recipe made with 20 signature spices and herbs that provide a more redefined Maggi Masala Experience. Made with a blend of finely ground and whole spices, and herbs, the all-new Maggi instant noodles have an extra special and flavourful tastemaker sachet inside. For every busy day or lazy evening, these noodles are easy to make and are perfect for those untimely hunger pangs. They are made with all-natural ingredients and offers you a lip-smacking taste as they are loaded with authentic flavours. So, go ahead, buy Maggi 2-Minute Special Masala Instant Noodles online today!',
          brand_name: '	Maggi',
          manu: 'Nestle India Ltd.',
          address: 'Nestle India Ltd.100/101, World Trade Centre, Barakhamba Lane, New Delhi-110001',
          m_email: 'wecare@in.nestle.com',
          m_website: 'www.nestle.in',
          net_quantity: '70 g',
          img1: 'assets/images/ms1.jpeg',
          img2: 'assets/images/ms2.jpeg',
          img3: 'assets/images/ms3.jpeg',
          img4: 'assets/images/ms4.jpeg',
          price: 18),
    );
  }
}