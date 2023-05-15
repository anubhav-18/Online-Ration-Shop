import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Bru extends StatelessWidget {
  const Bru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'BRU Instant Coffee 200 g',
          fdtitle: 'A perfect mix of 70% coffee and 30% chicory',
          description: 'BRU Instant Coffee was launched in 1968 and was India’s first coffee-chicory mix instant coffee. It is made from a fine blend of the choicest plantation and Robusta beans. These coffee beans are first roasted to perfection then the new & enhanced process ensures that the fresh coffee aroma is preserved so that you get a rich coffee taste beyond compare. Bru Instant coffee can be used to make an aromatic cup of hot coffee as well as a refreshing glass of cold coffee. With Bru Instant, you can now discover a great coffee experience with your loved ones. Buy Now!',
          brand_name: 'Bru',
          manu: 'Hindustan Unilever Ltd.',
          address: 'Hul Mysore Beverages, Plot No. 424, Hebbal Industrial Area, Mysore- 570016, Karnataka',
          m_email: 'lever.care@unilever.com',
          m_website: '	www.hul.co.in',
          net_quantity: '200 g',
          img1: 'assets/images/productimages/bru1.jpeg',
          img2: 'assets/images/productimages/bru2.jpeg',
          img3: 'assets/images/productimages/bru3.jpeg',
          img4: 'assets/images/productimages/bru4.jpeg',
          price: 333),
    );
  }
}
