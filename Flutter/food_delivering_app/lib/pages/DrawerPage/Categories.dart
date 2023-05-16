import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/CategoriesList/dairy&bakerycategories.dart';
import 'package:food_delivering_app/pages/Categories/List/BeautyList.dart';
import 'package:food_delivering_app/pages/Categories/List/babylist.dart';
import 'package:food_delivering_app/pages/Categories/List/dallist.dart';
import 'package:food_delivering_app/pages/Categories/List/drinklist.dart';
import 'package:food_delivering_app/pages/Categories/List/flourlist.dart';
import 'package:food_delivering_app/pages/Categories/List/petlist.dart';
import 'package:food_delivering_app/pages/Categories/List/snacklist.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';

class CategoriesPage extends StatefulWidget {
  @override
  State<CategoriesPage> createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bckGrndColor,
        title: Text('Categories'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 8, right: 10, bottom: 10, top: 10),
              margin: EdgeInsets.only(left: 8, right: 10, bottom: 10, top: 10),
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Column(
                  children: [
                    tile(
                      text: 'Dairy & Bakery',
                      img: 'assets/images/categoriesimg/dairynbakery.png',
                      nxtPage: DairyNBakeyCategories(),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 15,
                    ),
                    tile(
                      text: 'Staples',
                      img: 'assets/images/categoriesimg/staples.jpg',
                      nxtPage: DalList(),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 15,
                    ),
                    tile(
                      text: 'Snacks & Branded Food',
                      img: 'assets/images/categoriesimg/snaacks.png',
                      nxtPage: SnackList(),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 15,
                    ),
                    tile(
                      text: 'Beverages',
                      img: 'assets/images/categoriesimg/beverages.png',
                      nxtPage: DrinkList(),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 15,
                    ),
                    tile(
                      text: 'Personal Care',
                      img: 'assets/images/categoriesimg/personalcare.png',
                      nxtPage: BeautyList(),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 15,
                    ),
                    // tile(
                    //   text: 'Home Care',
                    //   img: 'assets/images/categoriesimg/homecare.png',
                    //   nxtPage: FlourList(),
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    //   indent: 10,
                    //   endIndent: 15,
                    // ),
                    tile(
                      text: 'Mom n Baby Care',
                      img: 'assets/images/categoriesimg/momnbaby.png',
                      nxtPage: BabyList(),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 15,
                    ),
                    tile(
                      text: 'Pets Food',
                      img: 'assets/images/categoriesimg/petsfood.png',
                      nxtPage: PetList(),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 15,
                    ),
                    tile(
                      text: 'Beauty',
                      img: 'assets/images/categoriesimg/beauty.jpeg',
                      nxtPage: BeautyList(),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                      endIndent: 15,
                    ),
                    // ExpandableTile(
                    //   text: 'Dairy & Bakery',
                    //   image: 'assets/images/potato2.jpg',
                    //   itemCount: 5,
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    // ),
                    // ExpandableTile(
                    //   text: 'Staples',
                    //   image: 'assets/images/categoriesimg/staples.jpg',
                    //   itemCount: 5,
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    // ),
                    // ExpandableTile(
                    //   text: 'Snacks & Branded Foods',
                    //   image: 'assets/images/categoriesimg/instantfood.jpg',
                    //   itemCount: 5,
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    // ),
                    // ExpandableTile(
                    //   text: 'Beverages',
                    //   image: 'assets/images/categoriesimg/beverages.jpg',
                    //   itemCount: 5,
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    // ),
                    // ExpandableTile(
                    //   text: 'Personal Care',
                    //   image: 'assets/images/categoriesimg/personal care.jpg',
                    //   itemCount: 5,
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    // ),
                    // ExpandableTile(
                    //   text: 'Home Care',
                    //   image: 'assets/images/categoriesimg/homecare.jpg',
                    //   itemCount: 5,
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    // ),
                    // ExpandableTile(
                    //   text: 'Mom & Baby Care',
                    //   image: 'assets/images/categoriesimg/momnbaby.jpg',
                    //   itemCount: 5,
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    // ),
                    // ExpandableTile(
                    //   text: 'Pet Food',
                    //   image: 'assets/images/categoriesimg/petcare.jpg',
                    //   itemCount: 5,
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    // ),
                    // ExpandableTile(
                    //   text: 'Beauty',
                    //   image: 'assets/images/categoriesimg/beauty.jpg',
                    //   itemCount: 5,
                    // ),
                    // Divider(
                    //   thickness: 1,
                    //   color: Colors.grey,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class tile extends StatelessWidget {
  const tile({
    super.key,
    required this.img,
    required this.text,
    required this.nxtPage
  });

  final String text, img;
  final Widget nxtPage ; 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
      leading: CircleAvatar(
        child: Image.asset(img),
        backgroundColor: Colors.white,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 17,
      ),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => nxtPage )),
    );
  }
}

// class ExpandableTile extends StatelessWidget {
//   const ExpandableTile({
//     super.key,
//     required this.text,
//     required this.image,
//     required this.itemCount,
//   });

//   final String text, image;
//   final int itemCount;

//   @override
//   Widget build(BuildContext context) {
//     return ExpansionTile(
//       tilePadding: EdgeInsets.only(top: 0),
//       title: Text(
//         text,
//         style: TextStyle(fontWeight: FontWeight.bold),
//       ),
//       collapsedTextColor: Colors.black,
//       textColor: Colors.black,
//       collapsedIconColor: Colors.black,
//       iconColor: bckGrndColor,
//       leading: CircleAvatar(
//         backgroundColor: Colors.white,
//         child: Image.asset(image),
//       ),
//     );
//   }
// }
