import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';

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
            SizedBox(height: 5,),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 199,
              new_price: 109,
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 199,
              new_price: 109,
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 199,
              new_price: 109,
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 199,
              new_price: 109,
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
            ),
            ProductListTile(
              img: 'assets/images/productimages/select1.jpeg',
              old_price: 199,
              new_price: 109,
              text: 'Aashirvaad Select Sharbati Whole Wheat Atta 5 kg ',
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
  });

  final String img, text;
  final int new_price, old_price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 150,
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
