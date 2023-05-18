import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Basil extends StatelessWidget {
  const Basil({Key? key}) : super(key: key);

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
          title: 'BASIL Biscuits 900gm Adult Veg',
          fdtitle: 'Dog Treats',
          description: 'Every pet owner wants to give their pets the best nutrition at no quality compromise so as to make their pets healthy and happy. By selecting BASIL biscuits they are assured to get all the necessary requirements in one product as our products are free from all doubts and complete on purity. Basil biscuits are high on nutrition and made using best ingredients with pure intention of Pet Welfare. They are baked with love and care under supervision to avoid any loss in nutrition. The ingredients going into them are sourced with care to give the best taste for easy acceptance by pets. We work on international standards to provide our clients with best in class products.',
          brand_name: 'BASIL',
          manu: 'Shubhesh Sales',
          address: 'Shubhesh Sales WZ-5A, Wz-5A, Asalatpur, Janakpuri, West Delhi DELHI - 110058',
          m_email: 'basilproducts@gmail.com',
          m_website: 'https://thebasil.in/',
          net_quantity: '900 g',
          img1: 'assets/images/productimages/basil1.jpeg',
          img2: 'assets/images/productimages/basil2.jpeg',
          img3: 'assets/images/productimages/basil3.jpeg',
          img4: 'assets/images/productimages/basil4.jpeg',
          price: 195),
    );
  }
}
