import 'package:flutter/material.dart';

import 'BestSeller.dart';
import 'titleWithBtn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromARGB(255, 238, 194, 210),
        title: Text("Grofers",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search, size: 17, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xffd4d181),
                child: Icon(
                  Icons.shopping_cart,
                  size: 17,
                  color: Colors.black,
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.add, size: 22),
                Text(' Add an Address',
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
          Banner(image: 'assets/imgs/offer1.jpg',),
          Banner(image: 'assets/imgs/offer1.jpg',),
          Titlewithbtn(
            title: 'Bestseller',
            buttonName: 'see all',
          ),
          Bestseller(),
          
        ],
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    super.key, 
    this.image,
  });

  final image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
