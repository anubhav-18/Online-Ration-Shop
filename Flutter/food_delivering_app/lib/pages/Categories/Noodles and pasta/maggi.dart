import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Maggi extends StatelessWidget {
  const Maggi({Key? key}) : super(key: key);

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
          title: 'Maggi 2-Minute Masala Instant Noodles 560 g',
          fdtitle: 'Made from the finest quality ingredients',
          description: 'Maggi 2-Minutes Noodles have been a classic Indian snack for a good few decades now. Nestle brings you another delicious instant food product - Maggi 2-Minute Masala Instant Noodles! These Maggi noodles offer you the delicious masala flavour that will leave you wanting for more. It is not just loved by young ones but adults too. For every busy day or lazy evening, these noodles are easy to make and are perfect for those untimely hunger pangs. They are made from all-natural ingredients and offer you a lip-smacking taste as they are loaded with authentic flavours. So go ahead, buy Maggi 2-Minute Masala Instant Noodle online today!',
          brand_name: '	Maggi',
          manu: 'Nestle India Ltd.',
          address: 'Nestle India Ltd.100/101, World Trade Centre, Barakhamba Lane, New Delhi-110001',
          m_email: 'wecare@in.nestle.com',
          m_website: '	www.nestle.in',
          net_quantity: '560 g',
          img1: 'assets/images/productimages/maggi1.jpeg',
          img2: 'assets/images/productimages/maggi2.jpeg',
          img3: 'assets/images/productimages/maggi3.jpeg',
          img4: 'assets/images/productimages/maggi4.jpeg',
          price: 96),
    );
  }
}
