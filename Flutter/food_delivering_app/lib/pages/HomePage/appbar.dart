import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';


AppBar buildApp() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: bckGrndColor,
      actions: [
        // Expanded(child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   mainAxisSize: MainAxisSize.max,
        //   children: [
        //     Container(
        //       margin: EdgeInsets.all(1),
        //       width: 259,
        //       decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(20),
        //           boxShadow: [
        //             BoxShadow(
        //                 offset: Offset(0, 10),
        //                 blurRadius: 50,
        //                 color: bckGrndColor.withOpacity(0.23))
        //           ]),
        //         child: Row(
        //           children: <Widget>[
        //             Expanded(
        //               child: TextField(
        //                 decoration: InputDecoration(
        //                     icon: Padding(
        //                       padding: const EdgeInsets.only(left: 10),
        //                       child: Icon(
        //                         Icons.search,
        //                         color: bckGrndColor,
        //                       ),
        //                     ),
        //                     contentPadding: EdgeInsets.symmetric(
        //                       vertical: 11,
        //                     ),
        //                     hintText: 'Search Grofers ',
        //                     hintStyle: TextStyle(
        //                       color: Colors.black.withOpacity(0.8),
        //                     )),
        //               ),
        //             ),
        //       // Mic
        //       Padding(
        //         padding: const EdgeInsets.only(right: 10),
        //         child: InkWell(
        //             onTap: () {},
        //             child: Icon(
        //               Icons.mic,
        //               color: bckGrndColor,
        //             )),
        //       )
        //     ],
        //     ),
        //   ),
        // // CART PAGE/ ICON
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 10),
        //   child: InkWell(
        //     onTap: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => CartPage()));
        //     },
        //     child: CircleAvatar(
        //         radius: 15,
        //         backgroundColor: bckGrndColor,
        //         child: Icon(
        //           Icons.shopping_cart,
        //           color: Colors.white,
        //         )),
        //   ),
        // )
        //   ],
        // )),
        // SEARCH BAR WITH MIC
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
            margin: EdgeInsets.all(1),
            width: 295,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: bckGrndColor.withOpacity(0.23))
                ]),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.search,
                            color: bckGrndColor,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 11,
                        ),
                        hintText: 'Search Grofers ',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                        )),
                  ),
                ),
                // Mic
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.mic,
                        color: bckGrndColor,
                      )),
                )
              ],
            ),
          ),
        ),
        // CART PAGE/ ICON
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            // onTap: () {
            //   Navigator.push( context , MaterialPageRoute(builder: (context) => CartPage()));
            // },
            child: CircleAvatar(
                radius: 15,
                backgroundColor: bckGrndColor,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )),
          ),
        )
      ],
    );
  }