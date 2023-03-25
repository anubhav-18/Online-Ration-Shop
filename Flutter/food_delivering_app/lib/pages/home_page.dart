import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.yellow,
        title: Text( "Grofers",
              style: TextStyle(color: Colors.black , fontSize: 20)
        ),
      actions: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xffd4d181),
          child: Icon(Icons.search,size: 17, color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.shopping_cart,size:17,color: Colors.black,)
          ),
        )
      ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 126, 237, 130),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          )
        ],
      ),
    );
  }
}
