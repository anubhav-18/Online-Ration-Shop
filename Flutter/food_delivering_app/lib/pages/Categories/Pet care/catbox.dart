import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class CatBox extends StatelessWidget {
  const CatBox({Key? key}) : super(key: key);

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
          title: 'Taiyo Pluss Discovery Cat Litter Box, Closed Typed Cat Litter Box with Litter Scoop (Color May Vary)',
          fdtitle: 'Hinged front for easy cleaning',
          description: 'Cat Litter tray with dome is a must have product for all cat lovers. It is large in size and comes with a door, filter and an easily detachable top for easy cleaning. The toilet comes with a big covered container to suit the need of every size of cat. It is recommended to clean all the cat trays at least once a week. You can just lift the top and clean it on regular basis. Toilet helps you to maintain a neat and clean house and provide your cat its own privacy when using the toilet. The product has been equipped with a swing door for the convenience of your cat. The toilets can be easily equipped with litter tray bags that assist in cleaning the toilet on regular basis. Features: Excellent product for cat owners. Reduced odour through filter system on top. Privacy to your cat. Easy swing door for easy access.',
          brand_name: 'TAIYO PLUSS DISCOVERY',
          manu: 'Taiyo Pet Products Private Limited',
          address: 'Taiyo Pluss Discovery TAIYO PET PRODUCTS PRIVATE LIMITED NO.33, SOUTH MADA STREET, KOLATHUR, CHENNAI-99, INDIA',
          m_email: 'taiyoplussdiscovery@gmail.com',
          m_website: 'https://www.taiyogroup.in/',
          net_quantity: '1',
          img1: 'assets/images/productimages/cb1.jpeg',
          img2: 'assets/images/productimages/cb2.jpeg',
          img3: 'assets/images/productimages/cb3.jpeg',
          img4: 'assets/images/productimages/cb4.jpeg',
          price: 945),
    );
  }
}
