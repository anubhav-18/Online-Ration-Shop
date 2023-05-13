import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class AashirvaadSelect extends StatelessWidget {
  const AashirvaadSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg',
          fdtitle: 'Made with MP Sharbati wheat which is harvested from the Sehore region of Madhya Pradesh',
          description: 'Aashirvaad ensures that only superior quality ingredients reach your kitchen and Aashirvaad Select Sharbati Whole Wheat Atta stays true to that word. Made from the King of Wheat - Sharbati, Aashirvaad Select is a premium quality aata which is made with love in India. This sharbati wheat flour contains MP Sharbati wheat from the Sehore region of Madhya Pradesh. The grains of sharabati atta are consistent in size and have a golden sheen to it. The fields of Sharbati wheat in Sehore are sun-kissed to perfection and showered by the right amount of rain. The dough made from the King of Wheat - Sharbati, absorbs more water which leads to the rotis being sweet in taste and softer in texture. Aashirvaad Select Sharbati makes sure that you and your family remain fit and healthy as you enjoy delicious, soft, and fluffy rotis. So go ahead and buy Aashirvaad Select Sharbati Whole Wheat Atta online today.',
          brand_name: 'Aashirvaad',
          manu: 'ITC Ltd.',
          address: 'ITC Limited 37, J.L. Nehru Road, Kolkata - 700071',
          m_email: 'itccares@itc.in',
          m_website: 'www.aashirvaad.com',
          net_quantity: '5 Kg',
          img1: 'assets/images/select1.jpeg',
          img2: 'assets/images/select2.jpeg',
          img3: 'assets/images/select3.jpeg',
          img4: 'assets/images/select4.jpeg',
          price: 269),
    );
  }
}
