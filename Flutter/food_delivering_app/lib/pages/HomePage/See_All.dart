import 'package:flutter/material.dart';
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
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'BestSeller',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: 1630,
          width: MediaQuery.of(context).size.width,
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: (1/1.37),
            crossAxisSpacing: 0,
            mainAxisSpacing: 1,
            children: [ 
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                CardCreate(
                  // image: 'assets\images\icons\profile.jpg', 
                  title: 'Poatat0', 
                  quantity: 1, 
                  price: 50
                ),
                
            ],
          ),
        ),
      )

    );
  }
}


class CardCreate extends StatelessWidget {
  const CardCreate({
    super.key, 
    // required this.image, 
    required this.title, 
    required this.quantity, 
    required this.price,
  });

  final String title ;
  final int quantity, price ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 200,
      // height: 300,
      child: Column(
        children: <Widget>[
          Container(
            height: 170,
            color: Colors.grey,
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(10),
          //     topRight: Radius.circular(10)
          //   ),
          //   // child: Image.asset(image , fit: BoxFit.cover,) ,
          // ),
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
                      style: TextStyle(color: bckGrndColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
