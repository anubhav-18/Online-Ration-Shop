import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/categories1.dart';
import 'package:food_delivering_app/pages/Categories/categories2.dart';
import 'package:food_delivering_app/pages/Categories/categories3.dart';
import 'package:food_delivering_app/pages/HomePage/Address.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Address
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: InkWell(
              onTap: () {
                Address_Btm_Sheet(context);
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 15),
                    child: Icon(
                      Icons.room,
                      color: bckGrndColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'Add an Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffE6F1F7),
            ),
          ),
          // Ads / Banner
          Banner(
            image: 'assets/images/offer1.jpg',
          ),
          Banner(
            image: 'assets/images/offer1.jpg',
          ),
          // Text - Bestseller and Button - see all
          Titlewithbtn(
            title: 'Bestseller',
            buttonName: 'see all',
          ),
          // Widget OF Bestseller Card
          Bestseller(),
          // Text - Shop By Category
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text('SHOP BY CATEGORY',
                    style: TextStyle(
                        fontSize: 23,
                        color: bckGrndColor,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          // Categories Layout
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
            ),
            height: 520,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              // mainAxisSpacing: 5,
              // crossAxisSpacing: 5,
              children: [
                gridBorder(
                  image: 'assets/images/category1.jpg',
                  category: Categories1(),
                ),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories2()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories3()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories1()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories2()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories3()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories1()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories2()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories3()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories1()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories2()),
                gridBorder(
                    image: 'assets/images/category1.jpg',
                    category: Categories3()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Address
Future<dynamic> Address_Btm_Sheet(BuildContext context) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      builder: (BuildContext) {
        return Container(
          height: 368,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              // Header and cancel Icon
              Row(
                children: [
                  Text(
                    'Select Delivery Location',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        size: 25,
                        color: bckGrndColor,
                      ))
                ],
              ),
              // Text
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Text('Select a delivery location to see product'),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text('avaialbitlity, offers and discounts.'),
                  ),
                ],
              ),
              // Add an Address
              SingleChildScrollView(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Address()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 20),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.23),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(3, 4))
                            ]),
                        child: Stack(alignment: Alignment.center, children: [
                          Positioned(
                              top: 35,
                              child: CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(0.23),
                                radius: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 29,
                                  child: Icon(
                                    Icons.add,
                                    size: 50,
                                    color: bckGrndColor,
                                  ),
                                ),
                              )),
                          Positioned(
                              bottom: 28,
                              child: Text(
                                'Add an Address',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: bckGrndColor,
                                    fontWeight: FontWeight.bold),
                              ))
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              // Enter a Pincode
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 220,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Enter PIN code',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Spacer(),
                                    InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.close,
                                          size: 25,
                                          color: bckGrndColor,
                                        ))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, bottom: 5),
                                      child: Text(
                                          'Enter PIN code to see product availabilty, offers'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Text('and discounts.'),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'PIN Code',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                    ),
                                  ],
                                ),
                                // Row(
                                //   children: [
                                //     Container(
                                //       child: TextField(
                                //         decoration: InputDecoration(
                                //           prefixIcon: Icon(Icons.room , color: Colors.grey,),
                                //           suffix: ElevatedButton(
                                //             style: ElevatedButton.styleFrom(
                                //               backgroundColor: bckGrndColor
                                //             ),
                                //             onPressed: () {},
                                //             child: Text('Apply' , style: TextStyle(color: Colors.white),)
                                //           )
                                //         ),
                                //       ),
                                //     ),
                                //   ],
                                // )
                                //             Row(
                                //               children: [
                                //                 Icon(Icons.room , color: Colors.grey,),
                                //                 TextField(
                                //                   decoration: InputDecoration(
                                //                     // enabledBorder: UnderlineInputBorder(
                                //                     //   borderSide: BorderSide(color: bckGrndColor),
                                //                     // ),
                                //                   )
                                //                 ),
                                //                 Spacer(),
                                //                 ElevatedButton(onPressed: () {},
                                //                   style: ElevatedButton.styleFrom(
                                //                     backgroundColor: bckGrndColor,
                                //                     shape: ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)))
                                //                   ),
                                //                   child: Text('Apply' , style: TextStyle(color: Colors.white))
                                //                 )
                                //               ],
                                //             )
                              ],
                            ),
                          );
                        });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: bckGrndColor,
                        size: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Enter a pincode',
                          style: TextStyle(
                              fontSize: 18,
                              color: bckGrndColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //Detect My Location
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.my_location,
                        color: bckGrndColor,
                        size: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Detect my location',
                          style: TextStyle(
                              fontSize: 18,
                              color: bckGrndColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}

// Categories GridLayout
class gridBorder extends StatelessWidget {
  const gridBorder({super.key, required this.image, required this.category});

  final String image;
  final Widget category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => category));
        },
      ),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          border: Border.all(color: Colors.grey, width: 2)),
    );
  }
}

//Banner Struct
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
