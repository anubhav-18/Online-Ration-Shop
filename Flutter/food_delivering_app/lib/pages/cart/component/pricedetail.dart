import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class PriceDetailsCard extends StatefulWidget {
  @override
  _PriceDetailsCardState createState() => _PriceDetailsCardState();
}

class _PriceDetailsCardState extends State<PriceDetailsCard> {

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Container(
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("PRICE DETAILS"),
              SizedBox(
                height: 10,
              ),
              Container(
                height: .5,
                color: Colors.grey[400],
                width: _media.width * .9,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Price(3 items)"),
                  Text(
                    "\u20B9 150",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("delivery"),
                  Text(
                    "free",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Dash(
                  direction: Axis.horizontal,
                  length: _media.width * .9,
                  dashColor: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total Amount",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\u20B9 150",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}