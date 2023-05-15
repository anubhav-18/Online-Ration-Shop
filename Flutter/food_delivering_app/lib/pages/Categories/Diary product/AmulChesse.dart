import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class AmulCheese extends StatelessWidget {
  const AmulCheese({Key? key}) : super(key: key);

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
          title: 'Amul Blend Diced Cheese 1 kg (Pouch)',
          fdtitle: 'Used in a wide range of dishes',
          description: 'Cheese is a dairy product, derived from milk and produced in wide ranges of flavours, textures and forms by coagulation of the milk protein, Casein. It comprises of milk proteins and fats. Cheese can give a lip-smacking flavour to every dish, you can either consume it whole, melt it in your food or use it in salads and sandwiches. So go ahead and buy Amul Blend Diced Cheese online today.',
          brand_name: 'Amul',
          manu: 'GCMMF Ltd.',
          address: 'Gujarat Co-Operative Milk Marketing Federation Ltd.Anand 388001, Gujarat, India.',
          m_email: 'customercare@amul.coop',
          m_website: 'www.amul.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/amulcheese1.jpeg',
          img2: 'assets/images/productimages/amulcheese2.jpeg',
          img3: 'assets/images/productimages/amulcheese3.jpeg',
          img4: 'assets/images/productimages/amulcheese4.jpeg',
          price: 530),
    );
  }
}
