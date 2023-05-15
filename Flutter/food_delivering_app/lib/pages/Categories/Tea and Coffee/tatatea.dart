import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class TataTea extends StatelessWidget {
  const TataTea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Tata Tea Premium Desh Ki Chai 1 kg',
          fdtitle: 'Hygienically packed',
          description: 'Tata Tea Premium Desh Ki Chai is your best bet to start your mornings peacefully. Even during work hours or at night, a cup of this tea is just the kick your brain needs. It is made from the finest quality of tea leaves and has a strong aroma to make a perfect cup of tea. So go ahead, buy this product online today!',
          brand_name: 'Tata Tea Premium',
          manu: 'Tata Global Beverage Ltd.',
          address: 'Tata Consumer Products Ltd.Kirloskar Business Park, Block C, 3Rd Floor, Hebbal, Bangalore - 560024',
          m_email: 'cc@tgbl.com',
          m_website: 'www.tataconsumer.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/tpt1.jpeg',
          img2: 'assets/images/productimages/tpt2.jpeg',
          img3: 'assets/images/productimages/tpt3.jpeg',
          img4: 'assets/images/productimages/tpt4.jpeg',
          price: 431),
    );
  }
}
