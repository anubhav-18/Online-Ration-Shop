import 'package:flutter/material.dart';

class Bestseller extends StatelessWidget {
  const Bestseller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          cardCreation(
            image: 'assets/imgs/potato2.jpg',
            title: 'Potato',
            quantity: 1,
            price: 50,
          ),
          cardCreation(
            image: 'assets/imgs/potato2.jpg',
            title: 'Potato',
            quantity: 1,
            price: 50,
          ),
          cardCreation(
            image: 'assets/imgs/potato2.jpg',
            title: 'Potato',
            quantity: 1,
            price: 50,
          ),
        ],
      ),
    );
  }
}

class cardCreation extends StatelessWidget {
  const cardCreation({
    super.key, 
    required this.image, 
    required this.title, 
    required this.quantity, 
    required this.price,
  });

  final String image, title ;
  final int quantity, price ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, bottom: 10),
      width: 150,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image),
          ),
          // Image.asset(image,width: 150),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.green.withOpacity(0.23))
                ]),
            child: Row(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "$title\n",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextSpan(
                    text: "$quantity Kg\n",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  TextSpan(
                    text: "\u{20B9}${price}",
                    style: Theme.of(context).textTheme.labelLarge,
                  )
                ])),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '      ADD',
                      style: TextStyle(color: Color(0xff0c9869)),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
