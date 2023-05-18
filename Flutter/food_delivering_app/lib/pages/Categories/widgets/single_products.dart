import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Cart/cart_view_widget.dart';
import 'package:food_delivering_app/pages/constants.dart';

// Size? size;

class SingleProduct extends StatelessWidget {
  // final productId;
  // final productCategory;
  // final productRate;
  // final productOldPrice;
  final int productPrice;
  final String productImage;
  final String productName;
  // final Function()? onTap;
  const SingleProduct({
    Key? key,
    // required this.onTap,
    // required this.productId,
    // required this.productCategory,
    // required this.productRate,
    // required this.productOldPrice,
    required this.productPrice,
    required this.productImage,
    required this.productName,
  }) : super(key: key);

  Widget build(BuildContext context) {
    // FavoriteProvider favoriteProvider = Provider.of<FavoriteProvider>(context);

    // FirebaseFirestore.instance
    //     .collection("favorite")
    //     .doc(FirebaseAuth.instance.currentUser!.uid)
    //     .collection("userFavorite")
    //     .doc(widget.productId)
    //     .get()
    //     .then(
    //       (value) => {
    //         if (this.mounted)
    //           {
    //             if (value.exists)
    //               {
    //                 setState(() {
    //                   isFavorite = value.get("productFavorite");
    //                 }),
    //               }
    //           }
    //       },
    //     );

    return GestureDetector(
      // onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12.0),
            alignment: Alignment.topRight,
            height: 170,
            width: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(productImage),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            // child: IconButton(
            //   highlightColor: Colors.transparent,
            //   splashColor: Colors.transparent,
            //   onPressed: () {
            //     // setState(
            //     //   () {
            //     //     isFavorite = !isFavorite;

            //     //     if (isFavorite == true) {
            //     //       favoriteProvider.favorite(
            //     //         productId: widget.productId,
            //     //         productCategory: widget.productCategory,
            //     //         productRate: widget.productRate,
            //     //         productOldPrice: widget.productOldPrice,
            //     //         productPrice: widget.productPrice,
            //     //         productImage: widget.productImage,
            //     //         productFavorite: true,
            //     //         productName: widget.productName,
            //     //       );
            //     //     } else if (isFavorite == false) {
            //     //       favoriteProvider.deleteFavorite(
            //     //           productId: widget.productId);
            //     //     }
            //     //   },
            //     // );
            //   },
            //   icon: Icon(
            //     isFavorite ? Icons.favorite : Icons.favorite_border,
            //     color: Colors.pink[700],
            //   ),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Text(
                      "\u{20B9}${productPrice}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Cart_View_Widget())) ;
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        side: BorderSide(color: bckGrndColor , width: 2)
                      ),
                      child: Text('Add' , style: TextStyle(color: bckGrndColor , fontSize: 15), ))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
