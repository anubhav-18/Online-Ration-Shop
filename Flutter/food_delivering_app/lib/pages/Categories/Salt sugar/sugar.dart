import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Sugar extends StatelessWidget {
  const Sugar({Key? key}) : super(key: key);

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
          title: 'Madhur Pure & Hygienic Sugar 5 kg',
          fdtitle: 'Packed with the utmost care',
          description: 'Madhur Pure and Hygienic Sugar is used in preparing sweetmeats and sweet dishes for your loved ones. It is a must-have product in your kitchen wardrobe. Buy Madhur Pure and Hygienic Sugar online now!',
          brand_name: 'Madhur',
          manu: 'Shree Renuka Sugars Ltd.',
          address: 'Shree Renuka Sugars Limited Unit-1, R.S. No. 367, H,Munoli, Taluka Saundatti, Dist. Belgaum, Karnataka-591117',
          m_email: 'customercare@renukasugars.com',
          m_website: '	www.madhursugar.com',
          net_quantity: '5 Kg',
          img1: 'assets/images/productimages/sugar1.jpeg',
          img2: 'assets/images/productimages/sugar2.jpeg',
          img3: 'assets/images/productimages/sugar3.jpeg',
          img4: 'assets/images/productimages/sugar4.jpeg',
          price: 232),
    );
  }
}
