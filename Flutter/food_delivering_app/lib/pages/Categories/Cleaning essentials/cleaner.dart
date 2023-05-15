import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Cleaner extends StatelessWidget {
  const Cleaner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Lizol Citrus Disinfectant Surface Cleaner 2 L',
          fdtitle: 'Removes tough stains',
          description:
              'Keep your home clean and fresh with Lizol Citrus Disinfectant Surface Cleaner. It is perfect for floors, tiles, sinks, kitchen counters and all other washable surfaces in your home. It leaves a long-lasting fragrance and removes tough stains easily. It helps in giving your home a visibly clean surface. So go ahead and buy this product online today!',
          brand_name: 'Lizol',
          manu: 'Reckitt Benckiser (India) Ltd.',
          address:
              'Reckitt Benckiser (India) Pvt. Ltd.Batch H- (Unit Ii,176, Sipcot Indl. Complex,Hosur-635126,TN.',
          m_email: 'IndiaHelp@rb.com',
          m_website: 'www.rb.com',
          net_quantity: '2 L',
          img1: 'assets/images/lizol1.jpeg',
          img2: 'assets/images/lizol2.jpeg',
          img3: 'assets/images/lizol3.jpeg',
          img4: 'assets/images/lizol4.jpeg',
          price: 399),
    );
  }
}
