import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';


class AashirvaadSuperior extends StatelessWidget {
  const AashirvaadSuperior({Key? key}) : super(key: key);

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
          title: 'Aashirvaad Superior MP Whole Wheat Atta 10 kg',
          fdtitle: 'Hygienically processed and packed',
          description:
              'Aashirvaad Superior MP Whole Wheat Atta provides goodness of taste in every bite. Also, it has a sweet and aromatic taste that works together to give you fuller and softer rotis, every single time. Buy Aashirvaad Superior MP Whole Wheat Atta online now!',
          brand_name: 'Aashirvaad',
          manu: 'ITC Ltd.',
          address: 'ITC Limited 37, J.L. Nehru Road, Kolkata - 700071',
          m_email: 'itccares@itc.in',
          m_website: 'www.aashirvaad.com',
          net_quantity: '10 Kg',
          img1: 'assets/images/productimages/superior1.jpeg',
          img2: 'assets/images/productimages/superior2.jpeg',
          img3: 'assets/images/productimages/superior3.jpeg',
          img4: 'assets/images/productimages/superior4.jpeg',
          price: 468),
    );
  }
}
