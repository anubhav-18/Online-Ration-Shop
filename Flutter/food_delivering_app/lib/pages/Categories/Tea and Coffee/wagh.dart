import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Wagh extends StatelessWidget {
  const Wagh({Key? key}) : super(key: key);

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
          title: 'Wagh Bakri Leaf Tea 1 kg',
          fdtitle: 'Premium and Strong Tea',
          description: 'Wagh Bakri Leaf Tea 1 kg is your best bet to start your mornings peacefully. Even during work hours or at night, a cup of this tea is just the kick your brain needs. It is made from the finest quality of tea leaves and has a strong aroma to make a perfect cup of tea. So go ahead, buy this product online today!',
          brand_name: 'Wagh Bakri',
          manu: 'Gujarat Tea Processors And Packers Ltd.',
          address: 'Gujarat Tea Processors & Packers Ltd.Wagh Bakri House, Ambawadi, Ahmedabad - 380006',
          m_email: 'nishantyaddla@gmail.com',
          m_website: 'https://www.waghbakritea.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/wb1.jpeg',
          img2: 'assets/images/productimages/wb2.jpeg',
          img3: 'assets/images/productimages/wb3.jpeg',
          img4: 'assets/images/productimages/wb4.jpeg',
          price: 475),
    );
  }
}
