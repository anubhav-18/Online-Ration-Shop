import 'package:flutter/material.dart';

import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/DrawerPage/Contact_Us.dart';
import 'package:food_delivering_app/pages/DrawerPage/FAQs.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Notifications.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_List.dart';
import 'package:food_delivering_app/pages/HomePage/Body.dart';
import 'package:food_delivering_app/pages/DrawerPage/Categories.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Order.dart';
import 'package:food_delivering_app/pages/DrawerPage/MyHeaderDrawer.dart';
import 'package:food_delivering_app/pages/Splash_Login/sign_n_login.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/services/google_sign.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
  // _btmNavState createState()
  // {
  //   return _btmNavState();
  // }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: Body(),
      drawer: Drawer(
        // width: double.maxFinite,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildApp() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: bckGrndColor,
      actions: [
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
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartPage()));
            },
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

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: Column(children: [
        heading('Home'),
        menuList('Home', Icons.home, HomePage()),
        menuList('Shop by Category', Icons.category, CategoriesPage()),
        heading('Accounts'),
        menuList('My Orders', Icons.shopping_bag, My_Order()),
        menuList(
            'My Notifications', Icons.notification_add, My_Notifications()),
        menuList('My List', Icons.format_list_bulleted, My_List()),
        heading('Help & Support'),
        menuList('Contact Us', Icons.contact_support, Contact_Us()),
        menuList('FAQs', Icons.help, FAQs()),
        menuList('About us', Icons.group, About_Us()),
        ListTile(
          leading: Icon(
            Icons.logout,
            size: 20,
            color: bckGrndColor,
          ),
          title: Text(
            'LogOut',
            style: TextStyle(fontSize: 16),
          ),
          selectedTileColor: Colors.grey,
          minLeadingWidth: 15,
          minVerticalPadding: 10,
          onTap: () async {
            await GoogleSignInProvider().googleLogout();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => signNlog()));
            // final provider =
            //     Provider.of<GoogleSignInProvider>(context, listen: false);
            // provider.googleLogout();
          },
        )
      ]),
    );
  }

  Widget heading(String Title) {
    return Material(
        child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 15),
          child: Text(
            Title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ));
  }

  Widget menuList(String Title, IconData icon, Widget title) {
    return Material(
      child: ListTile(
        leading: Icon(
          icon,
          size: 20,
          color: bckGrndColor,
        ),
        title: Text(
          Title,
          style: TextStyle(fontSize: 16),
        ),
        selectedTileColor: Colors.grey,
        minLeadingWidth: 15,
        minVerticalPadding: .8,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => title));
        },
      ),
    );
  }
}
