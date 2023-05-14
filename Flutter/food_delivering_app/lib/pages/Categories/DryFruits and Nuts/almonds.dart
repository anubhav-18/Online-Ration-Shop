import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Almonds extends StatelessWidget {
  const Almonds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Good Life Almonds 500 g',
          fdtitle: 'Vacuum packed to retain product freshness',
          description: 'Almonds are used in products such as cakes, bread, biscuits, muesli, confectionery and ice cream. One such cake is Bakewell tart. Almonds are used to make marzipan, frangipane and praline. In Indian cuisine they are used in a variety of recipes including those for Peshwari naan and many forms of curry. Buy Good Life Almonds online now!',
          brand_name: '	Good Life',
          manu: '	Private Label',
          address: 'Reliance Retail Ltd.5R Value Creations At: Gate No. 5, 103-106, Gidc, Naroda, Ahmedabad 382330 Gujarat.',
          m_email: 'customerservice@ril.com',
          m_website: 'www.relianceretail.com',
          net_quantity: '500 g',
          img1: 'assets/images/almond1.jpeg',
          img2: 'assets/images/almond2.jpeg',
          img3: 'assets/images/almond3.jpeg',
          img4: 'assets/images/almond4.jpeg',
          price: 369),
    );
  }
}