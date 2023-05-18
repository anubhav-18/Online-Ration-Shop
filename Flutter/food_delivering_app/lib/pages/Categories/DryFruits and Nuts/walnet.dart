import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Walnet extends StatelessWidget {
  const Walnet({Key? key}) : super(key: key);

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
          title: 'Good Life Walnut Kernels 500 g',
          fdtitle: 'Superior quality product from Navjeevan',
          description: 'Good Life Walnut Kernels are healthy snack option. You can simply toast some walnuts and add them to the stuffing of your sandwich or paranthas. Toast some walnuts, grind them and keep them in an airtight container. No wonder walnuts are a favourite among snackers. Buy Good Life Walnut Kernels online now!',
          brand_name: '	Good Life',
          manu: '	Private Label',
          address: 'Reliance Retail Ltd.5R Value Creations At: Gate No. 5, 103-106, Gidc, Naroda, Ahmedabad 382330 Gujarat.',
          m_email: 'customerservice@ril.com',
          m_website: 'www.relianceretail.com',
          net_quantity: '500 g',
          img1: 'assets/images/productimages/wlanut1.jpeg',
          img2: 'assets/images/productimages/wlanut2.jpeg',
          img3: 'assets/images/productimages/wlanut3.jpeg',
          img4: 'assets/images/productimages/wlanut4.jpeg',
          price: 659),
    );
  }
}
