import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/DrawerPage/Categories.dart';
import 'package:food_delivering_app/pages/DrawerPage/Contact_Us.dart';
import 'package:food_delivering_app/pages/DrawerPage/FAQs.dart';
import 'package:food_delivering_app/pages/DrawerPage/MyHeaderDrawer.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_List.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Notifications.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Order.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/Home_Page.dart';
import 'package:food_delivering_app/pages/constants.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({super.key});

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int current_index = 0;
  final pages = [
    HomePage(),
    CategoriesPage(),
    About_Us(),
    My_Order(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: pages[current_index],
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
            currentIndex: current_index,
            onTap: (index) => setState(
                  () => current_index = index,
                ),
            iconSize: 25,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black38,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'Categories'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Account'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: 'Order'),
            ]),
      ),
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
        //   ListTile(
        //     leading: Icon(
        //       Icons.logout,
        //       size: 20,
        //       color: bckGrndColor,
        //     ),
        //     title: Text(
        //       'LogOut',
        //       style: TextStyle(fontSize: 16),
        //     ),
        //     selectedTileColor: Colors.grey,
        //     minLeadingWidth: 15,
        //     minVerticalPadding: 10,
        //     onTap: () async {
        //       await GoogleSignInProvider().googleLogout();
        //       // FirebaseAuth.instance.signOut();
        //       // .then((value) {
        //       //   print('SignOut Succesfully');
        //         // Navigator.push(
        //         //     context, MaterialPageRoute(builder: (context) => signNlog()));
        //       // }
        //       // );
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => signNlog()));
        //     },
        //   )
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
