import 'package:flutter/material.dart';
import 'package:learnpath/cart/models/items.dart';

class CartCard extends StatefulWidget {
  final Item item;

  const CartCard({Key? key, required this.item}) : super(key: key);
  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  String quantity = "1";
  int value1 = 0;
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Container(
    // const EdgeInsets.only(top: 12.0);
      height: _media.height * .345,
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 15, bottom: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: _media.width * .6,
                        child: Text(
                          widget.item.desc,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.item.quantity,
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Seller: ${widget.item.seller}",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.grey,
                            size: 15,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "\u20B9 ${widget.item.offPrice}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "\u20B9 ${widget.item.realPrice}",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.item.off + "%off",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "2 offers available",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: _media.width * .25,
                              height: _media.height * .15,
                              child: Image.network(
                                widget.item.image,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Qty:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            DropdownButton<String>(
                              value: quantity,
                              items: <String>["1", "2", "3", "4", "5"]
                                  .map((String value1) =>
                                      DropdownMenuItem<String>(
                                          value: value1, child: Text(value1)))
                                  .toList(),
                              onChanged: (v) {
                                setState(() {
                                  quantity = v.toString();
                                });
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                  // padding: const EdgeInsets.only(top: 2.0),
                  Padding(padding: const EdgeInsets.only(top: 0.0),
                 child :  Container(
                  height: _media.height * .08,
                  width: _media.width * .4875,
                  child: MaterialButton(
                    onPressed: () {
                      
                    },
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          size: 15,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "SAVE FOR LATER",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                  ),
                Padding(padding: const EdgeInsets.only(top: 0.0),
                child : Container(
                  height: _media.height * .08,
                  width: _media.width * .4875,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.delete,
                          size: 15,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "REMOVE",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                )
                )
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
