import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Saffola extends StatelessWidget {
  const Saffola({Key? key}) : super(key: key);

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
          title: 'Saffola Gold Healthy Lifestyle Rice Bran Based Blended Oil 5 L',
          fdtitle: 'Superior quality product',
          description: 'Saffola Gold Pro Healthy Lifestyle Rice Bran Based Blended Oil is known because of its high smoke point, it is useful for high-heat cooking and is often used in various cuisines of South and East Asian countries. Choose Saffola Gold Blended Oil which partners on your journey for a healthy lifestyle. Buy Saffola Gold Pro Healthy Lifestyle Rice Bran Based Blended Oil online now!',
          brand_name: 'Saffola',
          manu: '	Marico Ltd.',
          address: 'Marico Ltd.Grande Palladium, 175 Cst Road, Kalina, Mumbai 400106',
          m_email: 'csc@marico.com',
          m_website: 'www.marico.com',
          net_quantity: '5 L',
          img1: 'assets/images/productimages/sg1.jpeg',
          img2: 'assets/images/productimages/sg2.jpeg',
          img3: 'assets/images/productimages/sg3.jpeg',
          img4: 'assets/images/productimages/sg4.jpeg',
          price: 959),
    );
  }
}
