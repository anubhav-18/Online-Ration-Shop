import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/HomePage/Address.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Address_widget extends StatefulWidget {
  const Address_widget({Key? key}) : super(key: key);

  @override
  State<Address_widget> createState() => _Address_widgetState();
}

class _Address_widgetState extends State<Address_widget> {
  String? _currentAddress;
  Position? _currentPosition;

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
      _getAddressFromLatLng(_currentPosition!);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 37,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  // 368,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Header and cancel Icon
                      Row(
                        children: [
                          Text(
                            'Select Delivery Location',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                            child: Text(
                                'Select a delivery location to see product'),
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
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Address()));
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
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Positioned(
                                    top: 35,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          Colors.black.withOpacity(0.23),
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
                      // Enter a Pincode
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
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
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Spacer(),
                                            InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                  // Navigator.pop(context);
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
                                              padding: const EdgeInsets.only(
                                                  bottom: 15),
                                              child: Text('and discounts.'),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: Text(
                                                'PIN Code',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 66,
                                              child: TextFormField(
                                                textAlign: TextAlign.start,
                                                decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.place,
                                                  ),
                                                  labelText: 'Enter an Pincode',
                                                  labelStyle: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                            // Spacer(),
                                            Expanded(
                                                flex: 8, child: SizedBox()),
                                            Expanded(
                                              flex: 25,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        bckGrndColor,
                                                    textStyle: TextStyle(
                                                        color: Colors.white),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30))),
                                                child: Text('Apply'),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                          },
                          // Enter a Pincode
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
                        child: Row(
                          children: [
                            Icon(
                              Icons.my_location,
                              color: bckGrndColor,
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _getCurrentPosition();
                                  
                                },
                                child: Text(
                                  'Detect my location',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: bckGrndColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Icon(
                Icons.room,
                color: bckGrndColor,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Expanded(
                child: Text(
                  '${_currentAddress ?? ""}',
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
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
