import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Cage extends StatelessWidget {
  const Cage({Key? key}) : super(key: key);

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
          title: 'Jainsons Bird Cage Best for Love Bird, Parrot, Parakeet, Budgie, Cockatiel Cage Hammock 18 Inch (Color May Vary)',
          fdtitle: 'The durable metal cage uses a non-toxic metallic finish for total eco-friendliness to man and bird.',
          description: 'Jainsons Pet Products Bird Cage Best for Love Bird, Parrot, Parakeet, Budgie, Cockatiel Cage Hammock 18 Inch (Color May Vary).The durable metal cage uses a non-toxic metallic finish for total eco-friendliness to man and bird..Cage detaches from base for fast, easy cleaning. Slide-out removable bottom tray.Included- One perch. Two food/ water bowls, One plastic swing/ring..Small wire bird cage for budgies, canaries, lovebirds and finches',
          brand_name: 'JAINSONS PET PRODUCTS',
          manu: 'JAINSONS PET PRODUCTS',
          address: 'JAINSONS PET PRODUCTS E-62 SECTOR 7 FIRST FLOOR, GAUTAM BUDDHA NAGAR NOIDA, UTTAR PRADESH - 201301',
          m_email: 'jainsonsdelhi@yahoo.com',
          m_website: 'www.jiomart.com',
          net_quantity: '1',
          img1: 'assets/images/productimages/cage1.jpeg',
          img2: 'assets/images/productimages/cage2.jpeg',
          img3: 'assets/images/productimages/cage3.jpeg',
          img4: 'assets/images/productimages/cage4.jpeg',
          price: 1106),
    );
  }
}
