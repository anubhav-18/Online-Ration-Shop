import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class AmulMasti extends StatelessWidget {
  const AmulMasti({Key? key}) : super(key: key);

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
          title: 'Amul Masti Spiced Buttermilk 1 L (Tetra Pak)',
          fdtitle: 'Healthy substitute for aerated drinks',
          description: 'Buttermilk is a tangy and spicy drink, preferred by both elders and children alike, especially during the scorching summer days. The unique assortment of spices used in the buttermilk gives a refreshing kick to the taste buds. Enjoy the goodness of nature in every sip of Amul Masti Spiced Buttermilk. Buy this product online today.',
          brand_name: 'Amul',
          manu: 'GCMMF Ltd.',
          address: 'Gujarat Co-Operative Milk Marketing Federation Ltd.Anand 388001, Gujarat, India.',
          m_email: 'customercare@amul.coop',
          m_website: 'www.amul.com',
          net_quantity: '1 L',
          img1: 'assets/images/productimages/amulmasti1.jpeg',
          img2: 'assets/images/productimages/amulmasti2.jpeg',
          img3: 'assets/images/productimages/amulmasti3.jpeg',
          img4: 'assets/images/productimages/amulmasti4.jpeg',
          price: 55),
    );
  }
}
