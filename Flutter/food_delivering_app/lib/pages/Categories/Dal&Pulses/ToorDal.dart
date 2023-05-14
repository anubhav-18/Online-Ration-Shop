import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class ToorDal extends StatelessWidget {
  const ToorDal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Tata Sampann Unpolished Tur / Arhar Dal 1 kg',
          fdtitle: 'Best quality product',
          description: 'Tata Sampann Unpolished Toor Dal is used in making a variety of dishes. It will surely fit into your daily diet. Toor Dal is one of the most used ingredients in an Indian kitchen. Toor dal is the staple food of India and is consumed on a daily basis in almost all Indian households along with rice and roti. It is used in popular recipes like sambhar, dals, and many other tasty dishes. Buy Tata Sampann Unpolished Toor Dal online now!',
          brand_name: 'Tata Sampann',
          manu: 'Tata Consumer Products Ltd.',
          address: 'Work And Processing Unit Bhl 40Km Stone, G.T. Road, Bahalgarh-131021, Sonepat Haryana',
          m_email: 'care@tataconsumer.com',
          m_website: 'www.tatasalt.com',
          net_quantity: '1 KG',
          img1: 'assets/images/toor1.jpeg',
          img2: 'assets/images/toor2.jpeg',
          img3: 'assets/images/toor3.jpeg',
          img4: 'assets/images/toor4.jpeg',
          price: 154),
    );
  }
}
