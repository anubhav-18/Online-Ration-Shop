import 'package:flutter/material.dart';

import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/DrawerPage/Contact_Us.dart';
import 'package:food_delivering_app/pages/DrawerPage/FAQs.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Notifications.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_List.dart';
import 'package:food_delivering_app/pages/HomePage/Body.dart';
import 'package:food_delivering_app/pages/HomePage/My_Cart.dart';
import 'package:food_delivering_app/pages/DrawerPage/Categories.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Order.dart';
import 'package:food_delivering_app/pages/DrawerPage/MyHeaderDrawer.dart';
import 'package:food_delivering_app/pages/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: Body(),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(
                  image:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Solid_white.svg/2048px-Solid_white.svg.png',
                ),
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
      title:
          Text("Grofers", style: TextStyle(color: Colors.white, fontSize: 20)),
      actions: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Colors.white,
          child: Icon(Icons.search, size: 19, color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => My_Cart()));
            },
            child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.shopping_cart,
                  size: 17,
                  color: Colors.black,
                )),
          ),
        )
      ],
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          heading('Home'),
          menuList('Home', Icons.home, HomePage()),
          menuList('Shop by Category', Icons.category, Categories()),
          heading('Accounts'),
          menuList('My Orders', Icons.shop_two, My_Order()),
          menuList('My Notifications', Icons.notification_add, My_Notifications()),
          menuList('My List', Icons.format_list_bulleted, My_List()),
          heading('Help & Support'),
          menuList('Contact Us', Icons.support_agent, Contact_Us()),
          menuList('FAQs', Icons.contact_support, FAQs()),
          menuList('About us', Icons.people, About_Us()),
        ],
      ),
    );
  }

  Widget heading(String Title) {
    return Material(
        child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
          child: Text(
            Title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ));
  }

  Widget menuList(String Title, IconData icon , Widget title ) {
    return Material(
      child: ListTile(
        leading: Icon(
          icon,
          size: 20,
          color: Color(0xff0378AD),
        ),
        title: Text(
          Title,
          style: TextStyle(fontSize: 16),
        ),
        selectedTileColor: Colors.grey,
        minLeadingWidth: 15,
        minVerticalPadding: 10,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => title ) );
        },
      ),
    );
  }

}
