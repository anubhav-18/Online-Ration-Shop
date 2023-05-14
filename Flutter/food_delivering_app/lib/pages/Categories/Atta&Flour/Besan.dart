import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Besan extends StatelessWidget {
  const Besan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Good Life Fine Besan 1 kg',
          fdtitle: 'Premium quality product',
          description: 'Good Life Fine Besan is one of the most commonly used ingredients in Indian kitchens. It is prepared from pure chana dal. It is pale yellow in colour and fine in texture. Soft and melt in mouth spiced and tempered rolls made from besan batter. Buy Good Life Fine Besan online now!',
          brand_name: 'Good Life',
          manu: 'Reliance Retail Ltd.',
          address: 'R K & Company Manpower Pvt. Ltd AT: Plot No.401, Sec-38, Phase-V, Food Park, HSIDC, Industrial Estate, Rai, Sonipat, (Haryana) - 131029GPA Foods Pvt Ltd',
          m_email: 'cc.rrl@ril.com',
          m_website: 'www.goodlife.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/besan1.jpeg',
          img2: 'assets/images/besan2.jpeg',
          img3: 'assets/images/besan3.jpeg',
          img4: 'assets/images/besan4.jpeg',
          price: 84),
    );
  }
}