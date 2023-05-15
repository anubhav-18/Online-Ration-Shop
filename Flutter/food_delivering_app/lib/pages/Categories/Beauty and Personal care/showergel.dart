import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';

class ShowerGel extends StatelessWidget {
  const ShowerGel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bckGrndColor,
        title: Text('Grocers'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
                radius: 15,
                backgroundColor: bckGrndColor,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About_Us()));
                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 15),
            child: CircleAvatar(
                radius: 15,
                backgroundColor: bckGrndColor,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
      body: productdescp(
          title: 'Nivea Lemon & Oil Shower Gel 250 ml',
          fdtitle: 'Suitable for daily use',
          description: 'Nivea Lemon & Oil Shower Gel provides tempting freshness and pampering care for your skin under the shower. Let this fresh shower gel, enriched with the goodness of Care Oil Pearl, envelop your skin with a silky soft foam, revitalizing with a scent of Lemon that stimulates your senses. The caring formula of this gel pampers your skin, leaving it moisturised, relaxes and rejuvenates your skin with every shower. So what are you waiting for? Buy the product online at the best rate, right here!',
          brand_name: 'Nivea',
          manu: 'Nivea India Pvt. Ltd.',
          address: 'Nivea India Pvt. Ltd.Hyde Park, 3rd Floor, Saki Vihar Road, Andheri (East), Mumbai, Maharashtra-400072.',
          m_email: 'care@beiersdorf.com',
          m_website: 'www.nivea.in',
          net_quantity: '250 ml',
          img1: 'assets/images/productimages/gel1.jpeg',
          img2: 'assets/images/productimages/gel2.jpeg',
          img3: 'assets/images/productimages/gel3.jpeg',
          img4: 'assets/images/productimages/gel4.jpeg',
          price: 155),
    );
  }
}
