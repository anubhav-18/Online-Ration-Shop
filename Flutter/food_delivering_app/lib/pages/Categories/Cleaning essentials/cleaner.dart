import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Cleaner extends StatelessWidget {
  const Cleaner({Key? key}) : super(key: key);

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
          title: 'Lizol Citrus Disinfectant Surface Cleaner 2 L',
          fdtitle: 'Removes tough stains',
          description:
              'Keep your home clean and fresh with Lizol Citrus Disinfectant Surface Cleaner. It is perfect for floors, tiles, sinks, kitchen counters and all other washable surfaces in your home. It leaves a long-lasting fragrance and removes tough stains easily. It helps in giving your home a visibly clean surface. So go ahead and buy this product online today!',
          brand_name: 'Lizol',
          manu: 'Reckitt Benckiser (India) Ltd.',
          address:
              'Reckitt Benckiser (India) Pvt. Ltd.Batch H- (Unit Ii,176, Sipcot Indl. Complex,Hosur-635126,TN.',
          m_email: 'IndiaHelp@rb.com',
          m_website: 'www.rb.com',
          net_quantity: '2 L',
          img1: 'assets/images/productimages/lizol1.jpeg',
          img2: 'assets/images/productimages/lizol2.jpeg',
          img3: 'assets/images/productimages/lizol3.jpeg',
          img4: 'assets/images/productimages/lizol4.jpeg',
          price: 399),
    );
  }
}
