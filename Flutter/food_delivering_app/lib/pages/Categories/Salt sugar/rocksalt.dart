import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class RockSalt extends StatelessWidget {
  const RockSalt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Tata Rock Salt 1 kg',
          fdtitle: 'Hygienically packed',
          description: 'Rock salt is naturally harvested from salt mines. In crystalline form, it is light pink in colour. Once it is crushed, it becomes pale pink or off-white. It is used in cooking, much like regular sea salt, and is mostly used during fasting. It is also extensively used in ayurvedic medicines. It also finds use in bath products and salt lamps. Buy Tata Rock Salt online now!',
          brand_name: 'Tata',
          manu: 'Tata Consumer Products Ltd.',
          address: 'Tata Chemicals Limited P.O. Mithapur, Dist. Dev Bhumi Dwarka, Gujarat - 361345',
          m_email: 'care@tataconsumer.com',
          m_website: 'www.tatasalt.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/rocksalt1.jpeg',
          img2: 'assets/images/productimages/rocksalt2.jpeg',
          img3: 'assets/images/productimages/rocksalt3.jpeg',
          img4: 'assets/images/productimages/rocksalt4.jpeg',
          price: 99),
    );
  }
}
