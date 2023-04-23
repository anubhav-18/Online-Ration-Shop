import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:food_delivering_app/pages/cart/cartRepo.dart';
import 'package:food_delivering_app/pages/cart/cartcard.dart';
import 'package:food_delivering_app/pages/cart/items.dart';
import 'package:food_delivering_app/pages/cart/pricedetail.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Item> allItems = CartRepo().getAllCartItems();
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Color.fromARGB(255, 55, 112, 245),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
        ),
        title: Text(
          'My Cart',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xFFeeeeee)),
            height: _media.height,
            width: _media.width,
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(height: 5),
              CartCard(
                item: allItems[0],
              ),
              SizedBox(height: 15),
              CartCard(
                item: allItems[1],
              ),
              SizedBox(height: 15),
              CartCard(
                item: allItems[2],
              ),
              SizedBox(height: 15),
              PriceDetailsCard(),
              SizedBox(
                height: 60,
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: _media.width,
              height: _media.height * .08,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.black87, blurRadius: 5.0),
                BoxShadow(color: Colors.white, blurRadius: 10.0),
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "\u20B9 150",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "View price details",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                        width: _media.width * .4,
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.orange[900],
                          child: Text(
                            "PLACE ORDER",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}