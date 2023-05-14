import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Shampoo extends StatelessWidget {
  const Shampoo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Dabur Vatika Health Shampoo 640 ml',
          fdtitle: 'Gentle on the scalp',
          description: 'Get salon-like hair treatment at home with Dabur Vatika Health Shampoo. With every wash it leaves your hair looking beautifully moisturized and clean. It is a gentle hair cleanser that keeps your hair looking healthy and manageable. It is mild on your scalp but gives protection from the aggression your hair faces every day. So what are you waiting for? Buy this product online at the best rate, right here!',
          brand_name: 'Dabur',
          manu: 'Dabur India Ltd.',
          address: 'Dabur India Ltd.(Unit 2), Integrated Industrial Estate, Plot No. 4, Sector -2, Pantnagar, Distt. Udham Singh Nagar Uttarakhand- 263146',
          m_email: 'daburcares@feedback.dabur',
          m_website: 'www.dabur.com',
          net_quantity: '640 ml',
          img1: 'assets/images/shampoo1.jpeg',
          img2: 'assets/images/shampoo2.jpeg',
          img3: 'assets/images/shampoo3.jpeg',
          img4: 'assets/images/shampoo4.jpeg',
          price: 247),
    );
  }
}