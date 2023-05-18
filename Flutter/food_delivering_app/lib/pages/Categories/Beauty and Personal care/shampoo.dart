import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';

class Shampoo extends StatelessWidget {
  const Shampoo({Key? key}) : super(key: key);

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
          title: 'Dabur Vatika Health Shampoo 640 ml',
          fdtitle: 'Gentle on the scalp',
          description:
              'Get salon-like hair treatment at home with Dabur Vatika Health Shampoo. With every wash it leaves your hair looking beautifully moisturized and clean. It is a gentle hair cleanser that keeps your hair looking healthy and manageable. It is mild on your scalp but gives protection from the aggression your hair faces every day. So what are you waiting for? Buy this product online at the best rate, right here!',
          brand_name: 'Dabur',
          manu: 'Dabur India Ltd.',
          address:
              'Dabur India Ltd.(Unit 2), Integrated Industrial Estate, Plot No. 4, Sector -2, Pantnagar, Distt. Udham Singh Nagar Uttarakhand- 263146',
          m_email: 'daburcares@feedback.dabur',
          m_website: 'www.dabur.com',
          net_quantity: '640 ml',
          img1: 'assets/images/productimages/shampoo1.jpeg',
          img2: 'assets/images/productimages/shampoo2.jpeg',
          img3: 'assets/images/productimages/shampoo3.jpeg',
          img4: 'assets/images/productimages/shampoo4.jpeg',
          price: 247),
    );
  }
}
