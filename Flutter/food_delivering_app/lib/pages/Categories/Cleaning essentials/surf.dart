import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Surf extends StatelessWidget {
  const Surf({Key? key}) : super(key: key);

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
          title: 'Surf Excel Matic Top Load Detergent Powder 6 kg',
          fdtitle: 'Removes tough stains',
          description: 'Keep clothes looking fresh and clean with Surf Excel Matic Top Load Detergent Powder that ensures tough stain removal from your clothes. This detergent powder is suitable for both your white and coloured clothes. It removes dirt from clothes, thereby removing dullness from them and leaving a pleasant fragrance. So go ahead and buy this product online today!',
          brand_name: 'Surf Excel',
          manu: 'Hindustan Unilever Ltd.',
          address: 'Hul Silvassa, Detergent Factory-Unit 1, Survey No. 151/1/1, Village-Dapada, Khanvel Road, Silvassa-396230',
          m_email: '	lever.care@unilever.com',
          m_website: 'www.hul.co.in',
          net_quantity: '6 Kg',
          img1: 'assets/images/productimages/surf1.jpeg',
          img2: 'assets/images/productimages/surf2.jpeg',
          img3: 'assets/images/productimages/surf3.jpeg',
          img4: 'assets/images/productimages/surf4.jpeg',
          price: 1031),
    );
  }
}
