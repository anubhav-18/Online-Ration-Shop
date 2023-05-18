import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Garam extends StatelessWidget {
  const Garam({Key? key}) : super(key: key);

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
          title: 'Everest Garam Masala 100 g',
          fdtitle: 'Imparts a unique aroma and flavour',
          description: 'Garam Masala is the traditional backbone of every dish, be it snacks, authentic Indian or gourmet. It is usually added at the end of cooking to add a zing to the delicacies and to retain the warmness of spices. Use Everest Garam Masala to uplift the taste of your biryani, snack stuffing and veg & non-veg curries. Buy this product online today.',
          brand_name: 'Everest',
          manu: 'S Narendra Kumar & Co',
          address: 'Everest Food Products Pvt Ltd 4/B, Lbs Marg Vichroli West, Mumbai-400083, Maharashtra',
          m_email: 'customercare@everestspices.com',
          m_website: 'www.everestspices.com',
          net_quantity: '100 g',
          img1: 'assets/images/productimages/garam1.jpeg',
          img2: 'assets/images/productimages/garam2.jpeg',
          img3: 'assets/images/productimages/garam3.jpeg',
          img4: 'assets/images/productimages/garam4.jpeg',
          price: 81),
    );
  }
}
