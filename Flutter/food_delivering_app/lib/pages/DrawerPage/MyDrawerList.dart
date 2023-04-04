import 'package:flutter/material.dart';

 Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          heading('Home'),
          menuItem(1, 'Home', Icons.home),
          menuItem(2, 'Shop by Category', Icons.category),
          heading('Accounts'),
          menuItem(3, 'My Orders', Icons.shop_two),
          menuItem(4, 'My Notifications', Icons.notification_add),
          menuItem(5, 'My List', Icons.format_list_bulleted),
          heading('Help & Support'),
          menuItem(6, 'Contact Us', Icons.support_agent),
          menuItem(7, 'FAQs', Icons.contact_support),
          menuItem(8, 'About us', Icons.people),
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

Widget menuItem(int id, String Title, IconData icon) {
  return Material(
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
                child: Icon(
              icon,
              size: 20,
              color: Color(0xff0378AD),
            )),
            Expanded(
                flex: 3,
                child: Text(
                  Title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ))
          ],
        ),
      ),
    ),
  );
}

enum drawerSections {
  Home,
  Shop_by_Category,
  My_Orders,
  My_Notifiactions,
  My_List,
  Contact_Us,
  FAQs,
  About_us
}
