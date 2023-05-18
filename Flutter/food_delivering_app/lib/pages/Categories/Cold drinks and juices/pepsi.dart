import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Pepsi extends StatelessWidget {
  const Pepsi({Key? key}) : super(key: key);

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
          title: 'Pepsi 2.25 L',
          fdtitle: 'Refreshing blend of freshness & unmatched quality',
          description: 'Delight your guests with Pepsi. It is the perfect drink for any weather and gatherings are incomplete without it. One glass is never enough! So go ahead buy this product online today.',
          brand_name: 'Pepsi',
          manu: 'Varun Beverages Ltd.',
          address: 'Pepsico India Ltd.Po Box 27, Dlf Qutub Enclave - 1, Gurgoan - 122002, Haryana',
          m_email: 'customer.feedback@pepsico.com',
          m_website: 'https://varunpepsi.com/',
          net_quantity: '2.25 L',
          img1: 'assets/images/productimages/pepsi1.jpeg',
          img2: 'assets/images/productimages/pepsi2.jpeg',
          img3: 'assets/images/productimages/pepsi3.jpeg',
          img4: 'assets/images/productimages/pepsi4.jpeg',
          price: 64),
    );
  }
}
