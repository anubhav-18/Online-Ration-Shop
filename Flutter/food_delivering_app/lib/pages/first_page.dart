import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/DrawerPage/Categories.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_List.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Order.dart';
import 'package:food_delivering_app/pages/DrawerPage/My_Profile.dart';
import 'package:food_delivering_app/pages/HomePage/Account.dart';
import 'package:food_delivering_app/pages/Home_Page.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0 ; 
  var PagesData = [HomePage() ,CategoriesPage(), Account() , My_List(), My_Order()] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagesData[selectedIndex],
      bottomNavigationBar: 
      // AnimatedContainer(
      //   child: BottomAppBar(
      //     height: 60,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         IconButton(icon: Icon(Icons.home), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},),
      //         IconButton(icon: Icon(Icons.category), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));},),
      //         IconButton(icon: Icon(Icons.account_box), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Account()));},),
      //         IconButton(icon: Icon(Icons.list), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => My_List()));},),
      //         IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));},),
      //       ],
      //     ),
      //   ),
      //   duration: const Duration(milliseconds: 800),
      // ) 
      BottomNavigationBar(
          
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 28,
          selectedLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8),  fontSize: 12),
          unselectedLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 12),
          selectedItemColor: bckGrndColor,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Account'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Orders'),
          ]),
    );
  }
}