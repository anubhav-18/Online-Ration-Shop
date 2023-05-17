import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Cart/cartpage.dart';
import 'package:food_delivering_app/pages/Categories/widgets/single_products.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/constants.dart';
// import 'package:food_delivering_app/pages/constants.dart';

class GridViewWidget extends StatefulWidget {
  final id;
  final collection;
  // final String subCollection;

  const GridViewWidget({
    Key? key,
    // required this.subCollection,
    required this.id,
    required this.collection, 
    // required subCollection,
  }) : super(key: key);

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    print(widget.id);
    return Scaffold(
      appBar: AppBar(
    centerTitle: true,
    backgroundColor: bckGrndColor,
    title: Text('Grocers'),
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      Padding(
        padding: EdgeInsets.all(10),
        child: CircleAvatar(
            radius: 15,
            backgroundColor: bckGrndColor,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => About_Us()));
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )),
      ),
      Padding(
        padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 15),
        child: CircleAvatar(
            radius: 15,
            backgroundColor: bckGrndColor,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            )),
      )
    ],
  ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("Categories")
            .doc(widget.id)
            .collection(widget.collection)
            .get(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshort) {
          if (!snapshort.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            // physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: snapshort.data!.docs.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.65,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context, Index) {
                      var data = snapshort.data!.docs[Index];
                      return SingleProduct(
                          productPrice: data['productPrice'],
                          productImage: data['productImage'],
                          productName: data['productName']);
                    }),
              ],
            ),
          );
        },
      ),
    );
  }
}


