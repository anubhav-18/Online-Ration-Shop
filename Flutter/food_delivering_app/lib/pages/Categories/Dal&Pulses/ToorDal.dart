import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class ToorDal extends StatelessWidget {
  const ToorDal({Key? key}) : super(key: key);

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
          title: 'Tata Sampann Unpolished Tur / Arhar Dal 1 kg',
          fdtitle: 'Best quality product',
          description: 'Tata Sampann Unpolished Toor Dal is used in making a variety of dishes. It will surely fit into your daily diet. Toor Dal is one of the most used ingredients in an Indian kitchen. Toor dal is the staple food of India and is consumed on a daily basis in almost all Indian households along with rice and roti. It is used in popular recipes like sambhar, dals, and many other tasty dishes. Buy Tata Sampann Unpolished Toor Dal online now!',
          brand_name: 'Tata Sampann',
          manu: 'Tata Consumer Products Ltd.',
          address: 'Work And Processing Unit Bhl 40Km Stone, G.T. Road, Bahalgarh-131021, Sonepat Haryana',
          m_email: 'care@tataconsumer.com',
          m_website: 'www.tatasalt.com',
          net_quantity: '1 KG',
          img1: 'assets/images/productimages/toor1.jpeg',
          img2: 'assets/images/productimages/toor2.jpeg',
          img3: 'assets/images/productimages/toor3.jpeg',
          img4: 'assets/images/productimages/toor4.jpeg',
          price: 154),
    );
  }
}
