import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Jeera extends StatelessWidget {
  const Jeera({Key? key}) : super(key: key);

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
          title: 'Catch Jeera Powder 100 g',
          fdtitle: 'Distinctive flavour and aroma',
          description: 'The Indian spice rack is incomplete without a jar of jeera powder in it. Jeera powder gives a flavourful touch to every preparation. Use Catch Jeera Powder to lend your dish with a slightly pungent and aromatic twist. Buy this product online today.',
          brand_name: 'Catch',
          manu: 'Ds Spiceco Pvt. Ltd.',
          address: 'DS Spiceco Pvt. Ltd. A-48, 49, Sector-4, Noida-201301, U.P.',
          m_email: 'foods@dsgroup.com',
          m_website: 'www.catchfoods.com',
          net_quantity: '100 g',
          img1: 'assets/images/productimages/jeera1.jpeg',
          img2: 'assets/images/productimages/jeera2.jpeg',
          img3: 'assets/images/productimages/jeera3.jpeg',
          img4: 'assets/images/productimages/jeera4.jpeg',
          price: 67),
    );
  }
}
