import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';

class ParleG extends StatelessWidget {
  const ParleG({Key? key}) : super(key: key);

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
          title: 'Parle-G Gold Biscuits 1 kg',
          fdtitle: 'Made from the finest quality ingredients',
          description:
              'Filled with the goodness of milk and wheat, Parle-G has been a source of all-round nourishment for the nation since decades. They'
              're crispy, they'
              're tasty and they'
              'll leave you craving for more. Parle G Biscuits have been an all-time favourite across people of all ages. It is a must-have product to enjoy fun-filled tea parties. Enjoy them with tea or as a standalone snack, the choice is yours. So wait no more. Buy your pack of Parle G Gold Biscuits online today!',
          brand_name: 'Parle',
          manu: 'Parle Products Pvt. Ltd.',
          address: 'Anand Food Products 16-1-486 Saidabad, Haderabad, 500059',
          m_email: 'cs@parle.biz',
          m_website: 'www.parleproducts.com',
          net_quantity: '1 Kg',
          img1: 'assets/images/productimages/parleg1.jpeg',
          img2: 'assets/images/productimages/parleg2.jpeg',
          img3: 'assets/images/productimages/parleg3.jpeg',
          img4: 'assets/images/productimages/parleg4.jpeg',
          price: 120),
    );
  }
}
