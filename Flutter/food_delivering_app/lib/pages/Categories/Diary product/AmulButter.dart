import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class AmulButter extends StatelessWidget {
  const AmulButter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Amul Butter 100 g (Carton)' ,
          fdtitle: 'Smooth and creamy,Easy to spread,Enhances the flavour',
          description: 'Who doesn''t like a chunk of creamy, velvety, smooth and mouth-watering butter? Made with fresh ingredients, Amul Butter is a multi-purpose butter that can be used as a spread on bread, paratha, roti, naan and sandwiches. It also makes an excellent topping for Pav-bhaji, dal, soups, salads, rice as well as a great cooking medium for Butter Paneer, Dal Makhni and a variety of delightful recipes. So what are you waiting for? Buy this product online today!',
          brand_name: 'Amul',
          manu: 'GCMMF Ltd.',
          address: 'Gujarat Co-Operative Milk Marketing Federation Ltd.Anand 388001, Gujarat, India.',
          m_email: 'customercare@amul.coop',
          m_website: 'www.amul.com',
          net_quantity: '100 g',
          img1: 'assets/images/productimages/amulbutter1.jpeg',
          img2: 'assets/images/productimages/amulbutter2.jpeg',
          img3: 'assets/images/productimages/amulbutter3.jpeg',
          img4: 'assets/images/productimages/amulbutter4.jpeg',
          price: 54),
    );
  }
}
