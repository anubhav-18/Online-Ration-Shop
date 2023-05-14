import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Maida extends StatelessWidget {
  const Maida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Maida 1 kg',
          fdtitle: 'Hygienically packed',
          description: 'Maida is used for both desserts and savoury items. It is an all purpose flour used to make enticing bakery items like pancakes, bread, pizza base etc. Besides this, you can also use it for making paratha, puris and other forms of bread too. Buy Maida online now!',
          brand_name: 'Private Label',
          manu: 'Private Label',
          address: 'Reliance Retail Ltd.Gat No. 77/80, India Corporation Godown, Monkoli Naka, Village: Dapode, Taluka Bhiwandi, Dist. Thane 421302.Reliance Retail Ltd.',
          m_email: 'cs@jiomart.com',
          m_website: 'www.jiomart.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/maida1.jpeg',
          img2: 'assets/images/maida2.jpeg',
          img3: 'assets/images/maida3.jpeg',
          img4: 'assets/images/maida4.jpeg',
          price: 45),
    );
  }
}
