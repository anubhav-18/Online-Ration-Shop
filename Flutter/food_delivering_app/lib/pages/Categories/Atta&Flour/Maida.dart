import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';

class Maida extends StatelessWidget {
  const Maida({Key? key}) : super(key: key);

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
          title: 'Maida 1 kg',
          fdtitle: 'Hygienically packed',
          description:
              'Maida is used for both desserts and savoury items. It is an all purpose flour used to make enticing bakery items like pancakes, bread, pizza base etc. Besides this, you can also use it for making paratha, puris and other forms of bread too. Buy Maida online now!',
          brand_name: 'Private Label',
          manu: 'Private Label',
          address:
              'Reliance Retail Ltd.Gat No. 77/80, India Corporation Godown, Monkoli Naka, Village: Dapode, Taluka Bhiwandi, Dist. Thane 421302.Reliance Retail Ltd.',
          m_email: 'cs@jiomart.com',
          m_website: 'www.jiomart.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/maida1.jpeg',
          img2: 'assets/images/productimages/maida2.jpeg',
          img3: 'assets/images/productimages/maida3.jpeg',
          img4: 'assets/images/productimages/maida4.jpeg',
          price: 45),
    );
  }
}
