import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Harpic extends StatelessWidget {
  const Harpic({Key? key}) : super(key: key);

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
          title: 'Harpic Power Plus Original Disinfectant Toilet Cleaner 1 L + 1 L (Get 500 ml Free)',
          fdtitle: 'Dirt protection',
          description: 'Looking to tackle the problem of malodour in the toilet? Harpic Power Plus Original Disinfectant Toilet Cleaner is the perfect companion to remove tough stains from your toilet while leaving it sparkling clean. Now it''s time to stop blaming the flush, drainage system or exhaust fan in the toilet. Maybe it''s time to change your toilet cleaner. So go ahead and buy this product online today!',
          brand_name: 'Harpic',
          manu: 'Reckitt Benckiser (India) Ltd.',
          address: 'Reckitt Benckiser (India) Pvt. Ltd.Batch H- (Unit Ii,176, Sipcot Indl. Complex,Hosur-635126,TN.',
          m_email: 'IndiaHelp@rb.com',
          m_website: 'www.rb.com',
          net_quantity: '2.5 L',
          img1: 'assets/images/productimages/harpic1.jpeg',
          img2: 'assets/images/productimages/harpic2.jpeg',
          img3: 'assets/images/productimages/harpic3.jpeg',
          img4: 'assets/images/productimages/harpic4.jpeg',
          price: 390),
    );
  }
}
