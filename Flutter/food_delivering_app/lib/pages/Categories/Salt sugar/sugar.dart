import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Sugar extends StatelessWidget {
  const Sugar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Madhur Pure & Hygienic Sugar 5 kg',
          fdtitle: 'Packed with the utmost care',
          description: 'Madhur Pure and Hygienic Sugar is used in preparing sweetmeats and sweet dishes for your loved ones. It is a must-have product in your kitchen wardrobe. Buy Madhur Pure and Hygienic Sugar online now!',
          brand_name: 'Madhur',
          manu: 'Shree Renuka Sugars Ltd.',
          address: 'Shree Renuka Sugars Limited Unit-1, R.S. No. 367, H,Munoli, Taluka Saundatti, Dist. Belgaum, Karnataka-591117',
          m_email: 'customercare@renukasugars.com',
          m_website: '	www.madhursugar.com',
          net_quantity: '5 Kg',
          img1: 'assets/images/sugar1.jpeg',
          img2: 'assets/images/sugar2.jpeg',
          img3: 'assets/images/sugar3.jpeg',
          img4: 'assets/images/sugar4.jpeg',
          price: 232),
    );
  }
}