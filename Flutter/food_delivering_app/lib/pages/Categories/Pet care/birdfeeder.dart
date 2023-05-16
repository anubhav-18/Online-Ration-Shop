import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class BirdFeeder extends StatelessWidget {
  const BirdFeeder({Key? key}) : super(key: key);

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
          title: 'Skybeings Bird Feeder for Bird Food Large 2 Piece_Green',
          fdtitle: 'Hanging large bird feeder with 6 nozzle',
          description: 'The large bird feeder from amijivdaya comes with 6 nozzle so that it can feed 6 birds at the same time. It holds upto 1.5 kgs of grain feed. A plate below ensures that the bird feed does not go to waste if it falls out of the cylinder. It can be hung outside or kept on a flat surface. Great to attract birds like sparrow, robin, lovebirds, myna, pigeons etc.',
          brand_name: 'AMI JIVDAYA',
          manu: 'AMI JIVDAYA',
          address: 'AMI JIVDAYA old agra road,, 2 baswant market Baswant market, Pimpalgaon baswant, Nashik MAHARASHTRA - 422209',
          m_email: 'amijivdaya@gmail.com',
          m_website: 'https://amijivdaya.com/',
          net_quantity: '2 pcs',
          img1: 'assets/images/productimages/bf1.jpeg',
          img2: 'assets/images/productimages/bf2.jpeg',
          img3: 'assets/images/productimages/bf3.jpeg',
          img4: 'assets/images/productimages/bf4.jpeg',
          price: 366),
    );
  }
}
