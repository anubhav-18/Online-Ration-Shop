import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Harpic extends StatelessWidget {
  const Harpic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Harpic Power Plus Original Disinfectant Toilet Cleaner 1 L + 1 L (Get 500 ml Free)',
          fdtitle: 'Dirt protection',
          description: 'Looking to tackle the problem of malodour in the toilet? Harpic Power Plus Original Disinfectant Toilet Cleaner is the perfect companion to remove tough stains from your toilet while leaving it sparkling clean. Now it''s time to stop blaming the flush, drainage system or exhaust fan in the toilet. Maybe it''s time to change your toilet cleaner. So go ahead and buy this product online today!',
          brand_name: 'Harpic',
          manu: 'Reckitt Benckiser (India) Ltd.',
          address: 'Reckitt Benckiser (India) Pvt. Ltd.Batch H- (Unit Ii,176, Sipcot Indl. Complex,Hosur-635126,TN.',
          m_email: 'IndiaHelp@rb.com',
          m_website: 'www.rb.com',
          net_quantity: '2.5 L',
          img1: 'assets/images/productimages/harpic1.jpeg',
          img2: 'assets/images/productimages/harpic2.jpeg',
          img3: 'assets/images/productimages/harpic3.jpeg',
          img4: 'assets/images/productimages/harpic4.jpeg',
          price: 390),
    );
  }
}
