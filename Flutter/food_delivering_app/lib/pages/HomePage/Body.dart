import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Atta&Flour/AaashirvaadSelect.dart';
import 'package:food_delivering_app/pages/Categories/Chocolates%20and%20sweets/choclairs.dart';
import 'package:food_delivering_app/pages/Categories/Cold%20drinks%20and%20juices/pepsi.dart';
import 'package:food_delivering_app/pages/Categories/Diary%20product/AmulButter.dart';
import 'package:food_delivering_app/pages/Categories/List/babylist.dart';
import 'package:food_delivering_app/pages/Categories/List/cleanlist.dart';
import 'package:food_delivering_app/pages/Categories/List/dallist.dart';
import 'package:food_delivering_app/pages/Categories/List/drinklist.dart';
import 'package:food_delivering_app/pages/Categories/List/flourlist.dart';
import 'package:food_delivering_app/pages/Categories/List/nutlist.dart';
import 'package:food_delivering_app/pages/Categories/List/oillist.dart';
import 'package:food_delivering_app/pages/Categories/List/snacklist.dart';
import 'package:food_delivering_app/pages/Categories/List/sugarlist.dart';
import 'package:food_delivering_app/pages/Categories/biscuits%20and%20snacks/bourbon.dart';
import 'package:food_delivering_app/pages/HomePage/See_All.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../Categories/widgets/grid_view_widgets.dart';

Size? size;

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Address
            Address_widget(),
            SizedBox(
              height: 5,
            ),
            // Carousel Slider: height 180
            CarouselSlider(
                items: [
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DrinkList())),
                      child: carouselItems(
                        img: 'assets/images/banner1.jpg',
                      )),
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OilList())),
                      child: carouselItems(
                        img: 'assets/images/banner2.jpg',
                      )),
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SnackList())),
                      child: carouselItems(
                        img: 'assets/images/banner3.jpg',
                      )),
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FlourList())),
                      child: carouselItems(
                        img: 'assets/images/banner5.jpg',
                      )),
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CleanList())),
                      child: carouselItems(
                        img: 'assets/images/banner6.jpg',
                      )),
                ],
                options: CarouselOptions(
                    height: 180,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 10),
                    enableInfiniteScroll: true,
                    viewportFraction: 1.1)),
            // Carousel Slider: height 110
            SizedBox(
              height: 5,
            ),
            CarouselSlider(
                items: [
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DalList())),
                      child: carouselItems(
                        img: 'assets/images/banner4.jpg',
                      )),
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BabyList())),
                      child: carouselItems(
                        img: 'assets/images/banner8.jpg',
                      )),
                  InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SugarList())),
                      child: carouselItems(
                        img: 'assets/images/banner9.jpg',
                      )),
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
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 6),
                child: Text('SHOP BY CATEGORY',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ),

            Container(
              height: 840,
              child: FutureBuilder<QuerySnapshot>(
                future:
                    FirebaseFirestore.instance.collection("Categories").get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  }
                  // if (!streamSnapshort.hasData) {
                  //   return Center(
                  //     child: CircularProgressIndicator(),
                  //   );
                  // }
                  else {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: ((ctx, index) {
                        return Categories(
                          onTap: () {
                            print('Print');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => GridViewWidget(
                                      id: snapshot.data!.docs[index].id,
                                      collection: snapshot.data!.docs[index]
                                          ['categoryName'],
                                    )),
                              ),
                            );
                          },
                          categoryName: snapshot.data!.docs[index]
                              ["categoryName"],
                          image: snapshot.data!.docs[index]["categoryImage"],
                        );
                      }),
                    );
                  }
                },
              ),
            ),

            // Container(
            //   margin: EdgeInsets.only(left: 1, right: 1, top: 10, bottom: 13),
            //   // decoration: BoxDecoration(
            //   //   border: Border.all(color: Colors.grey, width: 1),
            //   // ),
            //   height: 870,
            //   width: MediaQuery.of(context).size.width,
            //   child: GridView.count(
            //     // shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     crossAxisCount: 3,
            //     childAspectRatio: 0.8,
            //     mainAxisSpacing: 4,
            //     crossAxisSpacing: 0,
            //     children: [
            //       gridBorder(
            //         image: 'assets/images/categoriesimg/atta&flourOut.jpg',
            //         category: FlourList(),
            //       ),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/staplesOut.jpg',
            //           category: DalList()),
            //       gridBorder(
            //         image: 'assets/images/categoriesimg/spicesOut.jpg',
            //         category: AashirvaadSelect(),
            //       ),
            //       // category: SpiceList(),),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/dryfruitOut.jpg',
            //           category: NutList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/edibleoilOut.jpg',
            //           category: OilList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/saltsugarOut.jpg',
            //           category: SugarList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/beveragesOut.jpg',
            //           category: DrinkList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/snacksOut.jpg',
            //           category: SnackList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/noodles&pastaOut.jpg',
            //           category: PastaList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/teacoffeeOut.jpg',
            //           category: TeaList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/chocolatesOut.jpg',
            //           category: ChocoList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/momnbabyOut.jpg',
            //           category: BabyList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/beautyOut.jpg',
            //           category: BeautyList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/petcareOut.jpg',
            //           category: PetList()),
            //       gridBorder(
            //           image: 'assets/images/categoriesimg/cleaningOut.jpg',
            //           category: CleanList()),
            //     ],
            //   ),
            // ),
            // // Ads
            InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NutList())),
                child: Banner(
                  image: 'assets/images/banner7.jpg',
                )),
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
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
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
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
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
      padding: const EdgeInsets.only(left: 12, top: 10, bottom: 10, right: 10),
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
              style: TextStyle(color: bckGrndColor, fontSize: 15),
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
            image: 'assets/images/productimages/select1.jpeg',
            title: 'Aashi',
            quantity: '5 Kg',
            price: 269,
            page: AashirvaadSelect(),
          ),
          cardCreation(
            image: 'assets/images/productimages/amulbutter1.jpeg',
            title: 'Amul',
            quantity: '100 g',
            price: 54,
            page: AmulButter(),
          ),
          cardCreation(
            image: 'assets/images/productimages/b1.jpeg',
            title: 'Bourbon',
            quantity: '150 g',
            price: 30,
            page: Bourbon(),
          ),
          cardCreation(
            image: 'assets/images/productimages/pepsi1.jpeg',
            title: 'Pepsi',
            quantity: '2.25 L',
            price: 64,
            page: Pepsi(),
          ),
          cardCreation(
            image: 'assets/images/productimages/cl1.jpeg',
            title: 'Choclairs',
            quantity: '605 g',
            price: 160,
            page: Choclairs(),
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
    required this.page,
  });

  final String image, title, quantity;
  final int price;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => page)),
      child: Container(
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
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      text: TextSpan(children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "$quantity \n",
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
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String image;
  final String categoryName;
  final Function()? onTap;
  const Categories({
    Key? key,
    required this.onTap,
    required this.categoryName,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(12.0),
        width: 150,
        height: 500,
        // size!.width / 2 - 20,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              image,
            ),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.7),
          ),
          child: Center(
            child: Text(
              categoryName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
