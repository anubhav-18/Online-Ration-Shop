import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/HomePage/Address.dart';
import 'package:food_delivering_app/pages/constants.dart';

class Address_widget extends StatelessWidget {
  const Address_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 37,
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
    );
  }
}

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