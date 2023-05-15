import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class ChanaDal extends StatelessWidget {
  const ChanaDal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Tata Sampann Unpolished Chana Dal 500 g',
          fdtitle: 'Sortex cleaned and superior quality',
          description: 'Chana Dal can be used in a variety of recipes. Chana dal is dried and roasted to remove moisture. This is one of the versatile legume of Indian cuisine, having a crazy and smooth flavour. Chana Dal is one of the most well-known edible legumes of firm texture. Buy Tata Sampann Unpolished Chana Dal online now!',
          brand_name: 'Tata Sampann',
          manu: 'Tata Consumer Products Ltd.',
          address: 'Work And Processing Unit Bhl 40Km Stone, G.T. Road, Bahalgarh-131021, Sonepat Haryana',
          m_email: 'care@tataconsumer.com',
          m_website: 'www.tatasalt.com',
          net_quantity: '500 g',
          img1: 'assets/images/productimages/chana1.jpeg',
          img2: 'assets/images/productimages/chana2.jpeg',
          img3: 'assets/images/productimages/chana3.jpeg',
          img4: 'assets/images/productimages/chana4.jpeg',
          price: 59),
    );
  }
}
