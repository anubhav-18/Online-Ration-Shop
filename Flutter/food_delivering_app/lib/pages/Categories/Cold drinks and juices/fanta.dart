import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Fanta extends StatelessWidget {
  const Fanta({Key? key}) : super(key: key);

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
          title: 'Fanta Orange 2.25 L',
          fdtitle: 'Packed in hygienic conditions',
          description: 'Delight your guests with Fanta Orange. It is the perfect drink for any weather. Gatherings are incomplete without it. One glass is never enough! So go ahead buy this product online today.',
          brand_name: 'Fanta',
          manu: 'Coca-Cola India Pvt. Ltd.',
          address: 'Hindustan Coca Cola Beverages Pvt Ltd.Plot No 18, Bidadi Industrial Area, Bidadi Hobli, Bangalore Rural, Karnataka - 562109',
          m_email: 'indiahelpline@coca-cola.com',
          m_website: 'www.coca-cola.com',
          net_quantity: '2.25 L',
          img1: 'assets/images/productimages/fanta1.jpeg',
          img2: 'assets/images/productimages/fanta2.jpeg',
          img3: 'assets/images/productimages/fanta3.jpeg',
          img4: 'assets/images/productimages/fanta4.jpeg',
          price: 89),
    );
  }
}
