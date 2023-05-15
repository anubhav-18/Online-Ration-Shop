import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';

class JimJam extends StatelessWidget {
  const JimJam({Key? key}) : super(key: key);

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
          title: 'Britannia Jimjam Sandwich Biscuits 138 g',
          fdtitle: 'Cream sandwiched between crispy biscuits,Topped with a juicy jam and sugar crystals.Enjoy with a glass of milk or just like that,Lip-smacking flavor, cool shapes and soft cream,Popular with the kids',
          description: 'Britannia Jimjam Sandwich Biscuits are loved by people of almost all age groups. The crispy texture of biscuit is complemented by the sweet flavour of cream inside and top of all the jam at the center top sprinkled with the sugar crystals to make this biscuit best of all. Britannia biscuits and cookies for long has been a part of every home, sharing those moments of joy. Go ahead & buy this product online today!',
          brand_name: 'Britannia',
          manu: 'Britannia Industries Ltd.',
          address: 'Britannia Industrial Ltd.Mfg :Eastern Agro Foods Pvt. Ltd, Takai Adoshi Road, Po Sajangoan, Village Dekhu, Dist. Raigarh 4123, Maharashtra',
          m_email: 'feedback@britindia.com',
          m_website: 'www.britannia.co.in',
          net_quantity: '138 g',
          img1: 'assets/images/productimages/jj1.jpeg',
          img2: 'assets/images/productimages/jj2.jpeg',
          img3: 'assets/images/productimages/jj3.jpeg',
          img4: 'assets/images/productimages/jj4.jpeg',
          price: 25),
    );
  }
}
