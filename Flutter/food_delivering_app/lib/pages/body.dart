import 'package:flutter/material.dart';

import 'BestSeller.dart';
import 'titleWithBtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
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
          Banner(
            image: 'assets/imgs/offer1.jpg',
          ),
          Banner(
            image: 'assets/imgs/offer1.jpg',
          ),
          Titlewithbtn(
            title: 'Bestseller',
            buttonName: 'see all',
          ),
          Bestseller(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Text('SHOP BY CATEGORY',
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)
                            ),
              ),
            ],
          ),
          // GridView.count(crossAxisCount: 3, 
          // children: [
          //   Container (color: Colors.red,),
          //   Container (color: Colors.green,),
          //   Container (color: Colors.blue,),
          //   Container (color: Colors.grey,),
          //   Container (color: Colors.yellow,),
          //   Container (color: Colors.purple,),
          //   Container (color: Colors.pink,),
          //   Container (color: Colors.amber,)


          // ],)
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
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
