import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Cage extends StatelessWidget {
  const Cage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Jainsons Bird Cage Best for Love Bird, Parrot, Parakeet, Budgie, Cockatiel Cage Hammock 18 Inch (Color May Vary)',
          fdtitle: 'The durable metal cage uses a non-toxic metallic finish for total eco-friendliness to man and bird.',
          description: 'Jainsons Pet Products Bird Cage Best for Love Bird, Parrot, Parakeet, Budgie, Cockatiel Cage Hammock 18 Inch (Color May Vary).The durable metal cage uses a non-toxic metallic finish for total eco-friendliness to man and bird..Cage detaches from base for fast, easy cleaning. Slide-out removable bottom tray.Included- One perch. Two food/ water bowls, One plastic swing/ring..Small wire bird cage for budgies, canaries, lovebirds and finches',
          brand_name: 'JAINSONS PET PRODUCTS',
          manu: 'JAINSONS PET PRODUCTS',
          address: 'JAINSONS PET PRODUCTS E-62 SECTOR 7 FIRST FLOOR, GAUTAM BUDDHA NAGAR NOIDA, UTTAR PRADESH - 201301',
          m_email: 'jainsonsdelhi@yahoo.com',
          m_website: 'www.jiomart.com',
          net_quantity: '1',
          img1: 'assets/images/cage1.jpeg',
          img2: 'assets/images/cage2.jpeg',
          img3: 'assets/images/cage3.jpeg',
          img4: 'assets/images/cage4.jpeg',
          price: 1106),
    );
  }
}