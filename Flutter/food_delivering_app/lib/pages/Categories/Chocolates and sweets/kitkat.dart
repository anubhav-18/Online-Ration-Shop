import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class KitKat extends StatelessWidget {
  const KitKat({Key? key}) : super(key: key);

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
          title: 'KitKat Chocolate Share Bag 123.2 g (Pack of 8)',
          fdtitle: 'Hygienically packed',
          description: 'KitKat was first introduced in the UK market in 1935 under the name of Chocolate Crip and has since then remained as the famous four fingers chocolate. KitKat Chocolate Share Bag contains a handpicked delicious selection of finest quality ingredients. They are incredibly indulgent and the chocolate coated wafer fingers will satisfy any discerning chocoholic''s needs. Savour the taste of the smoothness, richness and creaminess with every bite. Let your taste buds sink with an amazing burst of chocolatey flavours. Buy this product online today.',
          brand_name: 'Kit Kat',
          manu: 'Nestle India Ltd.',
          address: 'Nestlé India Ltd.Nestlé House, Jacaranda Marg M Block, Dlf City Phase Ii, National Highway 8, Gurgaon 122 002, India',
          m_email: 'wecare@in.nestle.com',
          m_website: 'www.nestle.in',
          net_quantity: '123.2 g',
          img1: 'assets/images/productimages/kk1.jpeg',
          img2: 'assets/images/productimages/kk2.jpeg',
          img3: 'assets/images/productimages/kk3.jpeg',
          img4: 'assets/images/productimages/kk4.jpeg',
          price: 99),
    );
  }
}
