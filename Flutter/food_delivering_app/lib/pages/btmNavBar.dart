import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/categories.dart';
import 'package:food_delivering_app/pages/home_page.dart';
import 'package:food_delivering_app/pages/myOrder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List Page = [
    HomePage(),
    Categories(),
    MyOrder()
  ];
  var selectedIndex = 0;
  void onTap(int index) {
    setState(() {
      selectedIndex = index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Page[0],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          elevation: 0,
          currentIndex: selectedIndex,
          selectedItemColor: Color(0xff0378AD),
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.shop_two), label: 'My Order'),
          ]),
    );
  }
}
