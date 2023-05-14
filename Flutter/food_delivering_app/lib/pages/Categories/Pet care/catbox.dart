import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class CatBox extends StatelessWidget {
  const CatBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Taiyo Pluss Discovery Cat Litter Box, Closed Typed Cat Litter Box with Litter Scoop (Color May Vary)',
          fdtitle: 'Hinged front for easy cleaning',
          description: 'Cat Litter tray with dome is a must have product for all cat lovers. It is large in size and comes with a door, filter and an easily detachable top for easy cleaning. The toilet comes with a big covered container to suit the need of every size of cat. It is recommended to clean all the cat trays at least once a week. You can just lift the top and clean it on regular basis. Toilet helps you to maintain a neat and clean house and provide your cat its own privacy when using the toilet. The product has been equipped with a swing door for the convenience of your cat. The toilets can be easily equipped with litter tray bags that assist in cleaning the toilet on regular basis. Features: Excellent product for cat owners. Reduced odour through filter system on top. Privacy to your cat. Easy swing door for easy access.',
          brand_name: 'TAIYO PLUSS DISCOVERY',
          manu: 'Taiyo Pet Products Private Limited',
          address: 'Taiyo Pluss Discovery TAIYO PET PRODUCTS PRIVATE LIMITED NO.33, SOUTH MADA STREET, KOLATHUR, CHENNAI-99, INDIA',
          m_email: 'taiyoplussdiscovery@gmail.com',
          m_website: 'https://www.taiyogroup.in/',
          net_quantity: '1',
          img1: 'assets/images/cb1.jpeg',
          img2: 'assets/images/cb2.jpeg',
          img3: 'assets/images/cb3.jpeg',
          img4: 'assets/images/cb4.jpeg',
          price: 945),
    );
  }
}