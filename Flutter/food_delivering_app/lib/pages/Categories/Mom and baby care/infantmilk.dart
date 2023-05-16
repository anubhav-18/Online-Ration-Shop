import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class InfantMilk extends StatelessWidget {
  const InfantMilk({Key? key}) : super(key: key);

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
          title: 'Amulspray Infant Milk Food Tin Pack 500 g',
          fdtitle: 'This is a vegetarian product',
          description: 'Amulspray Infant Milk Food is a good source of fortified vitamins and minerals for your small baby. It is fortified with Vitamins- A, D, K, B12 Group, C and Minerals; Calcium, Magnesium, Phosphorus, Iron, Copper, Iodine, Manganese, and Zinc. So go ahead and buy this product online today! Important Notice: Mother''s Milk is best for your baby.',
          brand_name: 'Amul',
          manu: 'GCMMF Ltd.',
          address: 'Mehsana District Co-operative Milk Products Union Ltd.Mehsana- 384002, India.',
          m_email: 'customercare@amul.coop',
          m_website: 'www.amul.com',
          net_quantity: '500 g',
          img1: 'assets/images/productimages/im1.jpeg',
          img2: 'assets/images/productimages/im2.jpeg',
          img3: 'assets/images/productimages/im3.jpeg',
          img4: 'assets/images/productimages/im4.jpeg',
          price: 230),
    );
  }
}
