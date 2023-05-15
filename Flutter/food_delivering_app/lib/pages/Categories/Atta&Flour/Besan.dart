import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';

class Besan extends StatelessWidget {
  const Besan({Key? key}) : super(key: key);

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
          title: 'Good Life Fine Besan 1 kg',
          fdtitle: 'Premium quality product',
          description: 'Good Life Fine Besan is one of the most commonly used ingredients in Indian kitchens. It is prepared from pure chana dal. It is pale yellow in colour and fine in texture. Soft and melt in mouth spiced and tempered rolls made from besan batter. Buy Good Life Fine Besan online now!',
          brand_name: 'Good Life',
          manu: 'Reliance Retail Ltd.',
          address: 'R K & Company Manpower Pvt. Ltd AT: Plot No.401, Sec-38, Phase-V, Food Park, HSIDC, Industrial Estate, Rai, Sonipat, (Haryana) - 131029GPA Foods Pvt Ltd',
          m_email: 'cc.rrl@ril.com',
          m_website: 'www.goodlife.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/besan1.jpeg',
          img2: 'assets/images/productimages/besan2.jpeg',
          img3: 'assets/images/productimages/besan3.jpeg',
          img4: 'assets/images/productimages/besan4.jpeg',
          price: 84),
    );
  }
}
