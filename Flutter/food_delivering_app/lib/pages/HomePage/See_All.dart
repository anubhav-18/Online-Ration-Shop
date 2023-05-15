import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Atta&Flour/AaashirvaadSelect.dart';
import 'package:food_delivering_app/pages/Categories/Chocolates%20and%20sweets/choclairs.dart';
import 'package:food_delivering_app/pages/Categories/Cleaning%20essentials/surf.dart';
import 'package:food_delivering_app/pages/Categories/Cold%20drinks%20and%20juices/pepsi.dart';
import 'package:food_delivering_app/pages/Categories/Dal&Pulses/ChanaDal.dart';
import 'package:food_delivering_app/pages/Categories/Diary%20product/AmulButter.dart';
import 'package:food_delivering_app/pages/Categories/biscuits%20and%20snacks/bourbon.dart';
import 'package:food_delivering_app/pages/Categories/Atta&Flour/AaashirvaadSelect.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';
import 'package:food_delivering_app/pages/Categories/List/flourlist.dart';

class See_All extends StatefulWidget {
  const See_All({super.key});

  @override
  State<See_All> createState() => _See_AllState();
}

class _See_AllState extends State<See_All> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bckGrndColor,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        title: Text(
          'BestSeller',
          style: TextStyle(fontWeight: FontWeight.bold),
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
            Address_widget(),
            SizedBox(
              height: 5,
            ),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 331,
              new_price: 269,
              nxt_page: AashirvaadSelect(),
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
              nxt_page: AashirvaadSelect(),
            ),
            ProductListTile(
              img: 'assets/images/productimages/amulbutter1.jpeg',
              old_price: 56,
              new_price: 54,
              nxt_page: AashirvaadSelect(),
              text: 'Amul Butter 100 g (Carton)                  ',
              nxt_page: AmulButter(),
            ),
            ProductListTile(
              img: 'assets/images/productimages/b1.jpeg',
              old_price: 40,
              new_price: 35,
              nxt_page: AashirvaadSelect(),
              text: 'Britannia Bourbon The Original Cream Biscuits 150 g',
              nxt_page: Bourbon(),
            ),
            ProductListTile(
              img: 'assets/images/productimages/pepsi1.jpeg',
              old_price: 95,
              new_price: 87,
              nxt_page: AashirvaadSelect(),
              text: 'Pepsi 2.25 L                                             ',
              nxt_page: Pepsi(),
            ),
            ProductListTile(
              img: 'assets/images/productimages/cl1.jpeg',
              old_price: 200,
              new_price: 160,
              nxt_page: AashirvaadSelect(),
              text: 'Cadbury Gold Choclairs 605 g (Pack of 110)',
              nxt_page: Choclairs(),
            ),
            ProductListTile(
              img: 'assets/images/productimages/surf1.jpeg',
              old_price: 1375,
              new_price: 1031,
              nxt_page: AashirvaadSelect(),
              text: 'Surf Excel Matic Top Load Detergent Powder 6 kg',
              nxt_page: Surf(),
            ),
            ProductListTile(
              img: 'assets/images/productimages/chana1.jpeg',
              old_price: 64,
              new_price: 60,
              nxt_page: AashirvaadSelect(),
              text: 'Tata Sampann Unpolished Chana Dal 500 g',
              nxt_page: ChanaDal(),
            ),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 199,
              new_price: 109,
              nxt_page: AashirvaadSelect(),
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
              nxt_page: AashirvaadSelect(),
            ),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 199,
              new_price: 109,
              nxt_page: AashirvaadSelect(),
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
              nxt_page: AashirvaadSelect(),
            ),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 199,
              nxt_page: AashirvaadSelect(),
              new_price: 109,
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
              nxt_page: AashirvaadSelect(),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    super.key,
    required this.img,
    required this.new_price,
    required this.old_price,
    required this.text,
    required this.nxt_page,
  });

  final String img, text;
  final Widget nxt_page;
  final int new_price, old_price;
  final Widget nxt_page;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 150,
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => nxt_page)),
        child: Card(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                flex: 33,
                child: Image.asset(
                  img,
                ),
              ),
              Expanded(
                flex: 66,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 50,
                      child: Center(
                          child: RichText(
                        softWrap: true,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        textDirection: TextDirection.ltr,
                        maxLines: 3,
                        textScaleFactor: 1,
                        text: TextSpan(
                            text: text,
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.5)),
                      )),
                    ),
                    Expanded(
                        flex: 20,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '\u{20B9}$new_price',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            // Container(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                '\u{20B9}$old_price',
                                style: TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 7),
                              padding: EdgeInsets.only(
                                  left: 4, top: 3, bottom: 3, right: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.lightGreen.withOpacity(0.5)),
                              child: Discount(old_price, new_price),
                            )
                          ],
                        )),
                    Expanded(
                        flex: 30,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.grey, width: 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        'Add',
                                        style: TextStyle(color: bckGrndColor),
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: bckGrndColor,
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Text Discount(int prod_old_price, int prod_price) {
  double discount = (prod_old_price - prod_price) / prod_old_price * 100;
  var dis = discount.round();
  return Text(
    '$dis % OFF',
    style: TextStyle(fontSize: 15, color: Colors.green[900]),
  );
}
