import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';

class DarkFantasy extends StatelessWidget {
  const DarkFantasy({Key? key}) : super(key: key);

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
          title: 'Sunfeast Dark Fantasy Original Choco Filled Cookie 300 g',
          fdtitle: 'Made from the finest quality ingredients',
          description: 'Give in to your sweet cravings with Sunfeast Dark Fantasy Original Choco Filled Cookie. These cookies are crunchy yet delicate in texture. They are a perfect accompaniment to your tea or coffee. They are prepared using the finest ingredients and its hygienic packaging ensures that they remain fresh over a longer period. So go ahead, buy Sunfeast Dark Fantasy Original Choco Filled Cookie online today!',
          brand_name: 'Sunfeast',
          manu: 'ITC Ltd.',
          address: 'Itc Limited Division Plot No 1 Sector 11, Bhel, Haridwar 249403',
          m_email: 'itccares@itc.in',
          m_website: 'www.aashirvaad.com',
          net_quantity: '300 g',
          img1: 'assets/images/productimages/df1.jpeg',
          img2: 'assets/images/productimages/df2.jpeg',
          img3: 'assets/images/productimages/df3.jpeg',
          img4: 'assets/images/productimages/df4.jpeg',
          price: 112),
    );
  }
}
