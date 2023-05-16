import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class AmulKool extends StatelessWidget {
  const AmulKool({Key? key}) : super(key: key);

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
        title: 'Amul Kool Kesar Flavoured Milk 180 ml (Bottle)',
        fdtitle: 'Ideal substitute for aerated drinks',
        description:
            'Flavoured milk is one of the best options to make children have milk without any complaints. It endures all the proteins from milk along with giving an added flavour for tasty consumption. Moreover, its packaging makes it easier to stock up or carry while travelling. A yummy treat for both adults and children, buy Amul Kool Kesar Flavoured Milk online today!',
        brand_name: "Amul",
        manu: "	GCMMF Ltd.",
        address:
            "Gujarat Co-Operative Milk Marketing Federation Ltd.Anand 388001, Gujarat, India.Amulfed Dairy (A Unit Of Gcmmf Ltd.)Bhat 382428, District Gandhinagar, India.Panchmahal District Co-Operative Milk Producers Union Ltd.",
        m_email: "customercare@amul.coop",
        m_website: 'www.amul.com',
        net_quantity: "	180 ml",
        img1: 'assets/images/productimages/product1.jpeg',
        img2: 'assets/images/productimages/product12.jpeg',
        img3: "assets/images/productimages/product13.jpeg",
        img4: "assets/images/productimages/product14.jpeg",
        price: 22,
      ),
    );
  }
}
