import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class AashirvaadSuperior extends StatelessWidget {
  const AashirvaadSuperior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Aashirvaad Superior MP Whole Wheat Atta 10 kg',
          fdtitle: 'Hygienically processed and packed',
          description: 'Aashirvaad Superior MP Whole Wheat Atta provides goodness of taste in every bite. Also, it has a sweet and aromatic taste that works together to give you fuller and softer rotis, every single time. Buy Aashirvaad Superior MP Whole Wheat Atta online now!',
          brand_name: 'Aashirvaad',
          manu: 'ITC Ltd.',
          address: 'ITC Limited 37, J.L. Nehru Road, Kolkata - 700071',
          m_email: 'itccares@itc.in',
          m_website: 'www.aashirvaad.com',
          net_quantity: '10 Kg',
          img1: 'assets/images/superior1.jpeg',
          img2: 'assets/images/superior2.jpeg',
          img3: 'assets/images/superior3.jpeg',
          img4: 'assets/images/superior4.jpeg',
          price: 468),
    );
  }
}
