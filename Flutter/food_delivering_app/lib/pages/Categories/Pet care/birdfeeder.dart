import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class BirdFeeder extends StatelessWidget {
  const BirdFeeder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Skybeings Bird Feeder for Bird Food Large 2 Piece_Green',
          fdtitle: 'Hanging large bird feeder with 6 nozzle',
          description: 'The large bird feeder from amijivdaya comes with 6 nozzle so that it can feed 6 birds at the same time. It holds upto 1.5 kgs of grain feed. A plate below ensures that the bird feed does not go to waste if it falls out of the cylinder. It can be hung outside or kept on a flat surface. Great to attract birds like sparrow, robin, lovebirds, myna, pigeons etc.',
          brand_name: 'AMI JIVDAYA',
          manu: 'AMI JIVDAYA',
          address: 'AMI JIVDAYA old agra road,, 2 baswant market Baswant market, Pimpalgaon baswant, Nashik MAHARASHTRA - 422209',
          m_email: 'amijivdaya@gmail.com',
          m_website: 'https://amijivdaya.com/',
          net_quantity: '2 pcs',
          img1: 'assets/images/productimages/bf1.jpeg',
          img2: 'assets/images/productimages/bf2.jpeg',
          img3: 'assets/images/productimages/bf3.jpeg',
          img4: 'assets/images/productimages/bf4.jpeg',
          price: 366),
    );
  }
}
