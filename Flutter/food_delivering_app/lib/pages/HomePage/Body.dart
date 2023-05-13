import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/categories1.dart';
import 'package:food_delivering_app/pages/Categories/categories2.dart';
import 'package:food_delivering_app/pages/Categories/categories3.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
          // Address
          Address_widget(),
          SizedBox(height: 5,),
          // Carousel Slider: height 180
          CarouselSlider(
              items: [
                carouselItems(img: 'assets/images/banner1.jpg',),
                carouselItems(img: 'assets/images/banner2.jpg',),
                carouselItems(img: 'assets/images/banner3.jpg',),
                carouselItems(img: 'assets/images/banner5.jpg',),
                carouselItems(img: 'assets/images/banner6.jpg',),
              ],
              options: CarouselOptions(
                  height: 180,
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 10),
                  enableInfiniteScroll: true,
                  viewportFraction: 1.1
                )
          ),
          // Carousel Slider: height 110
          SizedBox(height: 5,),
          CarouselSlider(
            items: [
              carouselItems(img: 'assets/images/banner4.jpg',),
              carouselItems(img: 'assets/images/banner8.jpg',),
              carouselItems(img: 'assets/images/banner9.jpg',),
            ], 
            options: CarouselOptions(
              height: 110,
              viewportFraction: 1,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 10),
              reverse: true,
            )),
          // Shop by Category txt & Grid Layout
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 10 , left: 10 , right: 10 , bottom: 6),
              child: Text('SHOP BY CATEGORY',
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 1 , right: 1 , top: 10 , bottom: 13),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.grey, width: 1),
            // ),
            height: 870,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              // shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 0.8,
              mainAxisSpacing: 4,
              crossAxisSpacing: 0,
              children: [
                gridBorder(
                  image: 'assets/images/categoriesimg/atta&flourOut.jpg',
                  category: Categories1(),),
                gridBorder(
                    image: 'assets/images/categoriesimg/staplesOut.jpg',
                    category: Categories2()),
                gridBorder(
                  image: 'assets/images/categoriesimg/spicesOut.jpg',
                  category: Categories1(),),
                gridBorder(
                    image: 'assets/images/categoriesimg/dryfruitOut.jpg',
                    category: Categories2()),
                gridBorder(
                    image: 'assets/images/categoriesimg/edibleoilOut.jpg',
                    category: Categories3()),
                gridBorder(
                    image: 'assets/images/categoriesimg/saltsugarOut.jpg',
                    category: Categories3()),
                gridBorder(
                    image: 'assets/images/categoriesimg/beveragesOut.jpg',
                    category: Categories1()),
                gridBorder(
                    image: 'assets/images/categoriesimg/snacksOut.jpg',
                    category: Categories3()),
                gridBorder(
                    image: 'assets/images/categoriesimg/noodles&pastaOut.jpg',
                    category: Categories1()),
                gridBorder(
                    image: 'assets/images/categoriesimg/teacoffeeOut.jpg',
                    category: Categories2()),
                gridBorder(
                    image: 'assets/images/categoriesimg/chocolatesOut.jpg',
                    category: Categories3()),
                gridBorder(
                    image: 'assets/images/categoriesimg/momnbabyOut.jpg',
                    category: Categories1()),
                gridBorder(
                    image: 'assets/images/categoriesimg/beautyOut.jpg',
                    category: Categories1()),
                gridBorder(
                    image: 'assets/images/categoriesimg/petcareOut.jpg',
                    category: Categories2()),
                gridBorder(
                    image: 'assets/images/categoriesimg/cleaningOut.jpg',
                    category: Categories3()),
              ],
            ),
          ),
          // Ads
          Banner(image: 'assets/images/banner7.jpg',),          
          // Text - Bestseller and Button - see all
          Titlewithbtn(
            title: 'Bestseller',
            buttonName: 'see all',
          ),
          // Widget OF Bestseller Card
          Bestseller(),
          SizedBox(
            height: 5,
          ),          
        ],
      ),
    );
  }
}

// Carousel Slider
class carouselItems extends StatelessWidget {
  const carouselItems({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
// Categories GridLayout
class gridBorder extends StatelessWidget {
  const gridBorder({super.key, required this.image, required this.category});

  final String image;
  final Widget category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => category));
        },
      ),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          border: Border.all(color: Colors.white, width: 0)),
    );
  }
}
//Banner Struct: height 150 with padding
class Banner extends StatelessWidget {
  const Banner({
    super.key,
    this.image,
  });

  final image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 5,right: 5),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
//Banner2 Struct: height 110 with no padding
class Banner2 extends StatelessWidget {
  const Banner2({
    super.key,
    this.image,
  });

  final image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10 ,bottom: 10 ,),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
//Title With Button
class Titlewithbtn extends StatelessWidget {
  const Titlewithbtn({
    super.key,
    required this.title,
    required this.buttonName,
  });

  final String title, buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12 , top: 10 , bottom: 10 , right: 10),
      child: Row(children: <Widget>[
        Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  (MaterialPageRoute(builder: (context) => See_All())));
            },
            child: Text(
              buttonName,
              style: TextStyle(color: bckGrndColor,fontSize: 15),
            ))
      ]),
    );
  }
}
//Bestseller Category
class Bestseller extends StatelessWidget {
  const Bestseller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          cardCreation(
            image: 'assets/images/potato2.jpg',
            title: 'Potato',
            quantity: 1,
            price: 50,
          ),
          cardCreation(
            image: 'assets/images/potato2.jpg',
            title: 'Potato',
            quantity: 1,
            price: 50,
          ),
          cardCreation(
            image: 'assets/images/potato2.jpg',
            title: 'Potato',
            quantity: 1,
            price: 50,
          ),
          cardCreation(
            image: 'assets/images/potato2.jpg',
            title: 'Potato',
            quantity: 1,
            price: 50,
          ),
          cardCreation(
            image: 'assets/images/potato2.jpg',
            title: 'Potato',
            quantity: 1,
            price: 50,
          ),
        ],
      ),
    );
  }
}
//Card Making of Bestseller Category
class cardCreation extends StatelessWidget {
  const cardCreation({
    super.key,
    required this.image,
    required this.title,
    required this.quantity,
    required this.price,
  });

  final String image, title;
  final int quantity, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, bottom: 20, right: 10),
      width: 150,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.asset(image),
          ),
          // Image.asset(image,width: 150),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.green.withOpacity(0.23))
                ]),
            child: Row(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "$title\n",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextSpan(
                    text: "$quantity Kg\n",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextSpan(
                    text: "\u{20B9}${price}",
                    style: Theme.of(context).textTheme.labelLarge,
                  )
                ])),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '      ADD',
                      style: TextStyle(color: bckGrndColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
