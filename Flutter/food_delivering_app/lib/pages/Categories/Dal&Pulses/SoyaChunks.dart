import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Soyachunks extends StatelessWidget {
  const Soyachunks({Key? key}) : super(key: key);

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
          title: 'Fortune Soya Wadi / Chunks 200 g',
          fdtitle: 'Consistency in taste and aroma',
          description: 'Fortune Soya Wadi / Chunks are light, soft and easy on your stomach. Does your family need champion wala dum aur yum? From biryanis to pulao and even Chinese fried rice, cooked soya chunks can be added to numerous rice dishes. Fortune Soya Chunk - ''Yum jo de champion ko dum'' so Buy Fortune Soya Wadi / Chunks online now!',
          brand_name: '	Fortune',
          manu: '	Adani Wilmar Ltd.',
          address: 'Adani Wilmar Ltd.Soya Complex, Sanchi Road Vidisha - 464001 Madhya Pradesh, India.',
          m_email: 'care@adaniwilmar.in',
          m_website: 'www.adaniwilmar.com',
          net_quantity: '200 g',
          img1: 'assets/images/productimages/soya1.jpeg',
          img2: 'assets/images/productimages/soya2.jpeg',
          img3: 'assets/images/productimages/soya3.jpeg',
          img4: 'assets/images/productimages/soya4.jpeg',
          price: 55),
    );
  }
}
