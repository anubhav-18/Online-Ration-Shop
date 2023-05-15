import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';

class Jaggery extends StatelessWidget {
  const Jaggery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
          title: 'OREE Premium Pure Natural Fresh Desi Jaggery Soft Block No Sugar Added Gud/ Jaggery Cube(100g)',
          fdtitle: 'Jaggery Cubes fends off constipation by aiding digestion. It activates the digestive enzymes in our body, thus helps in proper digestion of food.',
          description: 'While we work to ensure that product information is correct, on occasion manufacturers may alter their ingredient lists. Actual product packaging and materials may contain more and/or different information than that shown on our website. We recommend that you do not solely rely on the information presented and that you always read labels, warnings, and directions before using or consuming a product. For additional information about a product, please contact the manufacturer. jaggery. While sugar is made only of sucrose, jaggery is made up of predominantly Minerals & Fibres. Relace your daily sugar intake with this "Nutritious" alternative No words can define the bliss that you get after indulging in a heavenly sweet delight, but the mere thought of weight gain and the desire to stay in shape can often make you ditch your love for sweets. And that’s where the sweet alternatives like jaggery come into the picture and amp up your sweet experience by giving your taste buds a soul-stirring experience! Sweets made with jaggery have been a quintessential part of our rich culinary heritage and this is simply because jaggery is way healthier than refined sugar.',
          brand_name: 'OREE',
          manu: 'JAYNTILAL INTERNATIONAL',
          address: 'JAYNTILAL INTERNATIONAL, 8, Mukati nagar, Indore, Indore, Madhya Pradesh, 452010, Indore MADHYA PRADESH - 452010',
          m_email: 'jaynti.lalinternational@gmail.com',
          m_website: 'www.jiomart.com',
          net_quantity: '100 g',
          img1: 'assets/images/productimages/jaggery1.jpeg',
          img2: 'assets/images/productimages/jaggery2.jpeg',
          img3: 'assets/images/productimages/jaggery3.jpeg',
          img4: 'assets/images/productimages/jaggery4.jpeg',
          price: 139),
    );
  }
}
