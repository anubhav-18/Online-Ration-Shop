import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';

class About_Us extends StatefulWidget {
  const About_Us({super.key});

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bckGrndColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("About Grofers"),
        elevation: 0,
        centerTitle: false,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10,left: 10,right: 10),
              margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 25),
                  Text("India's Trusted Online Ration Shopping App",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,wordSpacing: -2.5),textAlign: TextAlign.center,),
                  SizedBox(height: 30),
                  Text(
                      "At Grofers, our goal is to make shopping easier, faster, and more convenient than ever before for our customers. We are committed in our mission to build a trustworthy online marketplace which offers the widest range of products across the country. With our proven user experience and reliable services, we are committed to provide customers in India with a trusted and hassle-free one-stop-shop for all their shopping needs across various categories such as Electronics, Grocery, Fashion, Home & Kitchen, etc. ",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,),
                  SizedBox(height: 10),
                  Text(
                    "we have built most reliable retail presence that caters to the unique needs of customers in India, and we are committed to bring a similar experience online with Grofers. Our vast exceptional selection of products make our online portal the preferred shopping destination for all kinds of customers.",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "With our convenient payment options, on time delivery services, dependable customer service, and secure online transactions, you can now shop smarter, faster and more seamlessly within a few clicks. Our commitment to excellence has been recognized worldwide, and we look forward to offering our customers a delightful shopping experience online with Grofers. #Happy Shopping with Grofers.",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}