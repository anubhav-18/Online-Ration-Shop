import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutUs(),
    );
  }
}

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}
class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          onPressed: () {},
        ),
        title: Text("About Grofers"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1),
            Text("India's Trusted Online Ration Shopping system",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

            SizedBox(height: 50),
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
    );
  }
}


