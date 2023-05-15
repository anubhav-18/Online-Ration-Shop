import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Diaper extends StatelessWidget {
  const Diaper({Key? key}) : super(key: key);

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
          title: 'MamyPoko Extra Absorb Pants (L) 62 count (9 - 14 kg)',
          fdtitle: 'Prevents leakage',
          description: 'MamyPoko Extra Absorb Pants locks away the wetness and keeps your baby''s bottom dry. These pants have faster absorption and prevent leakage keeping your baby''s skin dry. These are easy to wear and keep your baby comfortable and smiling. So go ahead and buy this product online today!',
          brand_name: 'MamyPoko',
          manu: 'Unicharm India Ltd.',
          address: 'Unicharm India Pvt. Ltd.Unit No. 501 To 508 & 510 To 518, 5Th Floor Centrum Plaza Building, Golf Course Road, Sector 53, Gurugram, Haryana 122002',
          m_email: 'customercare@unicharm.com',
          m_website: 'www.unicharm.co.in',
          net_quantity: '62 pcs',
          img1: 'assets/images/productimages/diaper1.jpeg',
          img2: 'assets/images/productimages/diaper2.jpeg',
          img3: 'assets/images/productimages/diaper3.jpeg',
          img4: 'assets/images/productimages/diaper4.jpeg',
          price: 865),
    );
  }
}
