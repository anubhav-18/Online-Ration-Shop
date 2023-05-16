import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Chilli extends StatelessWidget {
  const Chilli({Key? key}) : super(key: key);

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
          title: 'Everest Kashmirilal Chilli Powder 100 g',
          fdtitle: 'Brilliant thick-red colour',
          description: 'Kashmiri chilli powder is mildly pungent and is acclaimed as a vibrant colour enhancer. Add rich colour to your favourite tandoori items and curries with Everest Kashmirilal Chilli Powder. Buy this product online today.',
          brand_name: 'Everest',
          manu: 'S Narendra Kumar & Co',
          address: 'Everest Food Products Pvt Ltd 4/B, Lbs Marg Vichroli West, Mumbai-400083, Maharashtra',
          m_email: 'customercare@everestspices.com',
          m_website: 'www.everestspices.com',
          net_quantity: '100 g',
          img1: 'assets/images/productimages/chilli1.jpeg',
          img2: 'assets/images/productimages/chilli2.jpeg',
          img3: 'assets/images/productimages/chilli3.jpeg',
          img4: 'assets/images/productimages/chilli4.jpeg',
          price: 111),
    );
  }
}
