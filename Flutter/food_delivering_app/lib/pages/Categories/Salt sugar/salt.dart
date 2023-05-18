import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Salt extends StatelessWidget {
  const Salt({Key? key}) : super(key: key);

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
          title: 'Tata Iodised Salt 1 kg',
          fdtitle: 'Natural and organic',
          description: 'Tata Iodised Salt is one of the most important ingredients used in Indian households. It adds a flavour to your dishes. Used to make almost every food item, and also known as the preservatives in pickels. Buy Tata Iodised Salt online now.',
          brand_name: 'Tata',
          manu: 'Tata Consumer Products Ltd.',
          address: 'Tata Chemicals Limited P.O. Mithapur, Dist. Dev Bhumi Dwarka, Gujarat - 361345',
          m_email: 'care@tataconsumer.com',
          m_website: 'www.tatasalt.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/ts1.jpeg',
          img2: 'assets/images/productimages/ts2.jpeg',
          img3: 'assets/images/productimages/ts3.jpeg',
          img4: 'assets/images/productimages/ts4.jpeg',
          price: 25),
    );
  }
}
