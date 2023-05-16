import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class PastaMasala extends StatelessWidget {
  const PastaMasala({Key? key}) : super(key: key);

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
          title: 'Maggi Pazzta Masala Penne Family Saver Pack 139 g',
          fdtitle: 'Made from the finest quality ingredients',
          description: 'Maggi Pazzta Masala Penne ? is delicious, quick and easy. The pasta is made with  Suji/Rawa (Semolina) and is ready in just 5 minutes! It makes a great snacking option or side for your everyday meals. Toss in some bell peppers or olives to make your pasta meal more wholesome and delicious! It is made from the finest quality ingredients and its hygienic packaging ensures the product remains fresh for a longer period of time. So go ahead, buy Maggi Pazzta Masala Penne online today and make your snack time more fun!',
          brand_name: '	Maggi',
          manu: 'Nestle India Ltd.',
          address: 'Nestle India Ltd.100/101, World Trade Centre, Barakhamba Lane, New Delhi-110001',
          m_email: 'wecare@in.nestle.com',
          m_website: '	www.nestle.in',
          net_quantity: '139 g',
          img1: 'assets/images/productimages/pm1.jpeg',
          img2: 'assets/images/productimages/pm2.jpeg',
          img3: 'assets/images/productimages/pm3.jpeg',
          img4: 'assets/images/productimages/pm4.jpeg',
          price: 53),
    );
  }
}
