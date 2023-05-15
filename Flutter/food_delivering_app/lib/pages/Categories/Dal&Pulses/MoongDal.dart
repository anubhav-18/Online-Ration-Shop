import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class MoongDal extends StatelessWidget {
  const MoongDal ({Key? key}) : super(key: key);

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
          title: 'Tata Sampann Unpolished Moong Dal 1 kg',
          fdtitle: 'Hygienically packed',
          description: 'An Indian meal is incomplete without a healthy bowl of dal in it. Moong is a wellspring of taste. From a very known moong dal halwa to healthy salads, dosa, subzi and snacks can bemade using moong dal. One of the healthy option for your hunger could be any quick moong dal recepie. Temper the moong dal with chillies, fried onions and tomatoes and serve it hot with rotis or steamed rice. Buy Tata Sampann Unpolished Moong Dal online now!',
          brand_name: 'Tata Sampann',
          manu: 'Tata Consumer Products Ltd.',
          address: 'Tata Chemicals Limited Bombay House, 24 Homi Mody Street, Fort, Mumbai, Maharashta - 400001.',
          m_email: 'care@tataconsumer.com',
          m_website: 'www.tatasalt.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/moon1.jpeg',
          img2: 'assets/images/productimages/moon2.jpeg',
          img3: 'assets/images/productimages/moon3.jpeg',
          img4: 'assets/images/productimages/moon4.jpeg',
          price: 141),
    );
  }
}
