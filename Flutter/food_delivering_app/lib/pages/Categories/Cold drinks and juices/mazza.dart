import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Mazza extends StatelessWidget {
  const Mazza({Key? key}) : super(key: key);

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
          title: 'Maaza Mango Drink 600 ml',
          fdtitle: 'Packed in hygienic conditions',
          description: 'Turn your day around with Maaza Mango Drink! All it takes is a glass and a bit of ice. Delicious and refreshing - there''s no other way to describe it. So go ahead, buy this product online today!',
          brand_name: 'Maaza',
          manu: 'Coca-Cola India Pvt. Ltd.',
          address: 'Hindustan Coca Cola Beverages Pvt Ltd.Plot No 18, Bidadi Industrial Area, Bidadi Hobli, Bangalore Rural, Karnataka - 562109',
          m_email: 'indiahelpline@coca-cola.com',
          m_website: 'www.coca-cola.com',
          net_quantity: '600 Ml',
          img1: 'assets/images/productimages/mazza1.jpeg',
          img2: 'assets/images/productimages/mazza2.jpeg',
          img3: 'assets/images/productimages/mazza3.jpeg',
          img4: 'assets/images/productimages/mazza4.jpeg',
          price: 36),
    );
  }
}
