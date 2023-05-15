import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class TataTea extends StatelessWidget {
  const TataTea({Key? key}) : super(key: key);

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
          title: 'Tata Tea Premium Desh Ki Chai 1 kg',
          fdtitle: 'Hygienically packed',
          description: 'Tata Tea Premium Desh Ki Chai is your best bet to start your mornings peacefully. Even during work hours or at night, a cup of this tea is just the kick your brain needs. It is made from the finest quality of tea leaves and has a strong aroma to make a perfect cup of tea. So go ahead, buy this product online today!',
          brand_name: 'Tata Tea Premium',
          manu: 'Tata Global Beverage Ltd.',
          address: 'Tata Consumer Products Ltd.Kirloskar Business Park, Block C, 3Rd Floor, Hebbal, Bangalore - 560024',
          m_email: 'cc@tgbl.com',
          m_website: 'www.tataconsumer.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/tpt1.jpeg',
          img2: 'assets/images/productimages/tpt2.jpeg',
          img3: 'assets/images/productimages/tpt3.jpeg',
          img4: 'assets/images/productimages/tpt4.jpeg',
          price: 431),
    );
  }
}
