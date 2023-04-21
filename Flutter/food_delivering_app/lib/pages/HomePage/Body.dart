import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/categories1.dart';
import 'package:food_delivering_app/pages/Categories/categories2.dart';
import 'package:food_delivering_app/pages/Categories/categories3.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'BestSeller.dart';
import 'Title_Btn.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
          Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Text('SHOP BY CATEGORY',
                          style: TextStyle(
                              fontSize: 23,
                              color: bckGrndColor,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
              ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2)
              ),
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                // mainAxisSpacing: 5,
                // crossAxisSpacing: 5,
                children: [
                  gridBorder(image: 'assets/images/category1.jpg', category: Categories1(),),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories2()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories3()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories1()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories2()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories3()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories1()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories2()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories3()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories1()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories2()),
                  gridBorder(image: 'assets/images/category1.jpg',category: Categories3()),
                ],
              ),
          ),
        ],
      ),
    );
  }
}

class gridBorder extends StatelessWidget {
  const gridBorder({super.key, required this.image, required this.category});

  final String image;
  final Widget category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => category));
        },
      ),
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

