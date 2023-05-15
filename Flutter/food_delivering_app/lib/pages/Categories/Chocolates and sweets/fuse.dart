import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Fuse extends StatelessWidget {
  const Fuse({Key? key}) : super(key: key);

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
          title: 'Cadbury Fuse Chocolate 50 g',
          fdtitle: 'Tasty & flavourful',
          description:
              'Cadbury has been inventing and investing in chocolates for nearly 200 years. Cadbury Fuse Chocolate contains a handpicked delicious selection of finest quality ingredients. They are incredibly indulgent and will satisfy any discerning chocoholic'
              's needs. Savour the taste of the smoothness, richness and creaminess with every bite. Let your taste buds sink with an amazing burst of chocolatey flavours. Buy this product online today.',
          brand_name: 'Cadbury',
          manu: 'Mondelez India Foods Pvt. Ltd.',
          address:
              'Mondelez India Foods Private Limited Unit No. 2001, 20Th Floor, Tower - 3 (Wing C), Indiabulls Finance Centre, Parel Mumbai - 400 013.',
          m_email: 'suggestions@mdlzindia.com',
          m_website: 'www.mdlzindia.com',
          net_quantity: '50 g',
          img1: 'assets/images/productimages/fuse1.jpeg',
          img2: 'assets/images/productimages/fuse2.jpeg',
          img3: 'assets/images/productimages/fuse3.jpeg',
          img4: 'assets/images/productimages/fuse4.jpeg',
          price: 28),
    );
  }
}
