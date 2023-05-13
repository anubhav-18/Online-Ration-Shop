import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Chilli extends StatelessWidget {
  const Chilli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Everest Kashmirilal Chilli Powder 100 g',
          fdtitle: 'Brilliant thick-red colour',
          description: 'Kashmiri chilli powder is mildly pungent and is acclaimed as a vibrant colour enhancer. Add rich colour to your favourite tandoori items and curries with Everest Kashmirilal Chilli Powder. Buy this product online today.',
          brand_name: 'Everest',
          manu: 'S Narendra Kumar & Co',
          address: 'Everest Food Products Pvt Ltd 4/B, Lbs Marg Vichroli West, Mumbai-400083, Maharashtra',
          m_email: 'customercare@everestspices.com',
          m_website: 'www.everestspices.com',
          net_quantity: '100 g',
          img1: 'assets/images/chilli1.jpeg',
          img2: 'assets/images/chilli2.jpeg',
          img3: 'assets/images/chilli3.jpeg',
          img4: 'assets/images/chilli4.jpeg',
          price: 111),
    );
  }
}