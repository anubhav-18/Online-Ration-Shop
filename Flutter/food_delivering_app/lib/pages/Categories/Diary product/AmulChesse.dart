import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class AmulCheese extends StatelessWidget {
  const AmulCheese({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Amul Blend Diced Cheese 1 kg (Pouch)',
          fdtitle: 'Used in a wide range of dishes',
          description: 'Cheese is a dairy product, derived from milk and produced in wide ranges of flavours, textures and forms by coagulation of the milk protein, Casein. It comprises of milk proteins and fats. Cheese can give a lip-smacking flavour to every dish, you can either consume it whole, melt it in your food or use it in salads and sandwiches. So go ahead and buy Amul Blend Diced Cheese online today.',
          brand_name: 'Amul',
          manu: 'GCMMF Ltd.',
          address: 'Gujarat Co-Operative Milk Marketing Federation Ltd.Anand 388001, Gujarat, India.',
          m_email: 'customercare@amul.coop',
          m_website: 'www.amul.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/amulcheese1.jpeg',
          img2: 'assets/images/amulcheese2.jpeg',
          img3: 'assets/images/amulcheese3.jpeg',
          img4: 'assets/images/amulcheese4.jpeg',
          price: 530),
    );
  }
}
