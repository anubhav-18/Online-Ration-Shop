import 'package:flutter/material.dart';
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
        title: Text('Categories Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent
            ),
            child: Column(
              children: [
                ExpandableTile(text: 'Dairy & Bakery', image:'assets/images/categoriesimg/bakery.jpg',),
                Divider(thickness: 1,color: Colors.grey,),
                ExpandableTile(text: 'Staples', image:'assets/images/categoriesimg/staples.jpg',),
                Divider(thickness: 1,color: Colors.grey,),
                ExpandableTile(text: 'Snacks & Branded Foods', image:'assets/images/categoriesimg/instantfood.jpg',),
                Divider(thickness: 1,color: Colors.grey,),
                ExpandableTile(text: 'Beverages', image:'assets/images/categoriesimg/beverages.jpg',),
                Divider(thickness: 1,color: Colors.grey,),
                ExpandableTile(text: 'Personal Care', image:'assets/images/categoriesimg/personal care.jpg',),
                Divider(thickness: 1,color: Colors.grey,),
                ExpandableTile(text: 'Home Care', image:'assets/images/categoriesimg/homecare.jpg',),
                Divider(thickness: 1,color: Colors.grey,),
                ExpandableTile(text: 'Mom & Baby Care', image:'assets/images/categoriesimg/momnbaby.jpg',),
                Divider(thickness: 1,color: Colors.grey,),
                ExpandableTile(text: 'Pet Food', image:'assets/images/categoriesimg/petcare.jpg',),
                Divider(thickness: 1,color: Colors.grey,),
                ExpandableTile(text: 'Beauty', image:'assets/images/categoriesimg/beauty.jpg',),
                Divider(thickness: 1,color: Colors.grey,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandableTile extends StatelessWidget {
  const ExpandableTile({
    super.key,
    required this.text, 
    required this.image, 
  });

  final String text , image;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        tilePadding: EdgeInsets.only(top: 0),
        title: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        collapsedTextColor: Colors.black,
        textColor: Colors.black,
        collapsedIconColor: Colors.black,
        iconColor: bckGrndColor,
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset(image),
        ),
        children: [
          ListTile(title: Text('Dairy'),),
          Divider(thickness: 1,color: Colors.grey, indent: 17, endIndent: 17,),
          ListTile(title: Text('Dairy'),),
        ],
      );
  }
}


