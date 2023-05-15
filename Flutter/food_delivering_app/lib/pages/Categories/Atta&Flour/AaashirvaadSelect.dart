import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';


class AashirvaadSelect  extends StatelessWidget {
  const AashirvaadSelect ({super.key});

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
          title: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg',
          fdtitle: 'Made with MP Sharbati wheat which is harvested from the Sehore region of Madhya Pradesh',
          description: 'Aashirvaad ensures that only superior quality ingredients reach your kitchen and Aashirvaad Select Sharbati Whole Wheat Atta stays true to that word. Made from the King of Wheat - Sharbati, Aashirvaad Select is a premium quality aata which is made with love in India. This sharbati wheat flour contains MP Sharbati wheat from the Sehore region of Madhya Pradesh. The grains of sharabati atta are consistent in size and have a golden sheen to it. The fields of Sharbati wheat in Sehore are sun-kissed to perfection and showered by the right amount of rain. The dough made from the King of Wheat - Sharbati, absorbs more water which leads to the rotis being sweet in taste and softer in texture. Aashirvaad Select Sharbati makes sure that you and your family remain fit and healthy as you enjoy delicious, soft, and fluffy rotis. So go ahead and buy Aashirvaad Select Sharbati Whole Wheat Atta online today.',
          brand_name: 'Aashirvaad',
          manu: 'ITC Ltd.',
          address: 'ITC Limited 37, J.L. Nehru Road, Kolkata - 700071',
          m_email: 'itccares@itc.in',
          m_website: 'www.aashirvaad.com',
          net_quantity: '5 Kg',
          img1: 'assets/images/productimages/select1.jpeg',
          img2: 'assets/images/productimages/select2.jpeg',
          img3: 'assets/images/productimages/select3.jpeg',
          img4: 'assets/images/productimages/select4.jpeg',
          price: 269),
    );
  }

  
}
