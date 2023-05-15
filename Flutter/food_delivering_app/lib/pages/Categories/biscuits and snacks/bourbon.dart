import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';

class Bourbon extends StatelessWidget {
  const Bourbon({Key? key}) : super(key: key);

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
          title: 'Britannia Bourbon The Original Cream Biscuits 150 g',
          fdtitle: 'Creamy and chocolaty inside,Crunchy on the outside,Sprinkled with sugar crystals,Enjoy sweet moments,Made for chocolate lovers,From the house of Britannia',
          description: 'Britannia Bourbon Chocolate Cream are a delightful combination of smooth chocolate cream with crunchy chocolate biscuits topped with sparkling sugar crystals. Every bite of these delicious, chocolaty and indulgent cookies entices you for more and more. The satisfying and rich taste of chocolate enclosed in crispy, crunchy biscuits gives you a mouth-watering experience. Britannia biscuits, cookies, cakes and rusk are a perfect companion for your tea. Believing in delivering fresh and delicious products, Britannia India manufactures some of India''s favourite brands like Good Day, Tiger, NutriChoice, Bourbon, Milk Bikis and Marie Gold.',
          brand_name: 'Britannia',
          manu: 'Britannia Industries Ltd.',
          address: 'Britannia Industrial Ltd.Mfg :Eastern Agro Foods Pvt. Ltd, Takai Adoshi Road, Po Sajangoan, Village Dekhu, Dist. Raigarh 4123, Maharashtra',
          m_email: 'feedback@britindia.com',
          m_website: 'www.britannia.co.in',
          net_quantity: '150 g',
          img1: 'assets/images/productimages/b1.jpeg',
          img2: 'assets/images/productimages/b2.jpeg',
          img3: 'assets/images/productimages/b3.jpeg',
          img4: 'assets/images/productimages/b4.jpeg',
          price: 30),
    );
  }
}
