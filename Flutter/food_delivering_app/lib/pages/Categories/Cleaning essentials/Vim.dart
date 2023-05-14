import 'package:flutter/material.dart';
import 'package:productdetails/product_structure.dart';
import 'package:productdetails/appbar.dart';

class Vim extends StatelessWidget {
  const Vim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'Vim Lemon Dishwash Liquid 750 ml',
          fdtitle: 'One spoon of Vim Liquid Dishwash Gel is enough to clean one sink-full of dirty utensils,It is soft on the hands,It has a superior fragrance that lasts long after rinsing utensils,Vim Dishwash Liquid Gel is available in different sizes and packaging in the market which includes bottles and pouch packs',
          description: 'Vim is the No.1 dishwashing brand in India. Vim''s Dishwash Liquid Gel is a concentrated gel containing the power of 100 lemons (power refers to the cleaning benefits of lemons). It cleans the utensils deeply and unlike dishwash bars, it does not leave any powdery white layer of residue behind on them. It provides great value for money as only one spoon of Vim Liquid Dishwash Gel is enough to clean one sink-full of dirty utensils (as per the independent lab test conducted). Vim Liquid Dishwash Gel also helps you to remove the stubborn malodours from your tiffin boxes. It provides a pleasant cleaning experience and gives refreshing lemon fragrance during dishwash. Its pH neutral formula is soft on hands compared to other bars. It can safely be used to clean delicate utensils and all kinds of expensive crockery including the non-stick cookware. It does not leave any scratches on the surfaces and keeps the utensils looking new. It is extremely convenient to use. Just take a spoonful of Vim Dishwash Liquid Gel, mix it in a bowl of water and use the mixture to wash an entire sink-full load of dishes.Vim Dishwash Liquid Gel is available in different sizes and packaging format in the market which include bottles and pouch packs.',
          brand_name: 'Vim',
          manu: 'Hindustan Unilever Ltd.',
          address: 'Hindustan Unilever Ltd.Unit - 7, I. Ind. Estate, Haridwar, Uttarakhand, Pin-249 403M/S. Rmcpl, Baddi, H.P.-173 205',
          m_email: '	lever.care@unilever.com',
          m_website: 'www.hul.co.in',
          net_quantity: '750 Ml',
          img1: 'assets/images/vim1.jpeg',
          img2: 'assets/images/vim2.jpeg',
          img3: 'assets/images/vim3.jpeg',
          img4: 'assets/images/vim4.jpeg',
          price: 139),
    );
  }
}