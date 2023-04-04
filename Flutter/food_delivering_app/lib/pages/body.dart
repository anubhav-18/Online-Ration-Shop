import 'package:flutter/material.dart';

import 'HomePage/BestSeller.dart';
import 'HomePage/titleWithBtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                  child: Text(
                    '+ Add an Address',
                    style: TextStyle(
                        color: Color.fromARGB(255, 67, 66, 66), fontSize: 16),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffE6F1F7),
                ),
              ),
            ],
          ),
          Banner(
            image: 'assets/images/offer1.jpg',
          ),
          Banner(
            image: 'assets/images/offer1.jpg',
          ),
          Titlewithbtn(
            title: 'Bestseller',
            buttonName: 'see all',
          ),
          Bestseller(),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Text('SHOP BY CATEGORY',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 550,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      // mainAxisSpacing: 5,
                      // crossAxisSpacing: 5,
                      children: [
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                        gridBorder(image: 'assets\images\category1.jpg'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class gridBorder extends StatelessWidget {
  const gridBorder({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          border: Border.all(color: Colors.grey, width: 2)),
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
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
