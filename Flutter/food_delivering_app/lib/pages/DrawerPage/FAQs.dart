import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/HomePage/address_widget.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/constants.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bckGrndColor,
        title: Text('FAQs '),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
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
      body: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Address_widget(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      " FAQ's",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Text(
                      " Frequently Asked Question:",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Text(
                        " Check out this section to get answers for all the  frequently",
                        style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.7)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Text(
                        " asked questions.",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      " Product / Price / Promotion",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 6),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text("How do I look for a particular Product?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'You can search for a product by navigating through the category pages or by using search tab on the top of every page.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text("How will you ensure the freshness of products?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'We ensure that all our products are hygienically and carefully handled and maintain them in the correct temperature & packaging.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text(
                          "How can I check if the product I am ordering is in stock?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'You can prepare your cart and select the address you want the order to be delivered at. The availability of the product will be dependent on the selected address. Product without availability will be shown as ‘Out of stock’. You may remove them or add similar products as per your convenience.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    SizedBox(height: 10),
                    Text(
                      " Ordering",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 8),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text("How do I know if I placed my order correctly?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'Upon the successful completion of your order, an order confirmation e-mail and SMS containing your order details will be sent to your registered email ID and phone number.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text("Can I call and place an order?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title:
                                Text('No, currently this service is not available.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text("How do I make changes to my order?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'Currently, there is no provision to modify the order once it is placed. You may cancel the order until it is shipped. You may request for a return of the ordered product as per the return policy.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    SizedBox(height: 15),
                    Text(
                      " Payment",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 8),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text(
                          "What are the various modes of payment I can use for shopping?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'You can pay for your order using the following modes of payment: UPI,Credit Card / Debit Card,Netbanking,e-Wallets,Meal Cards,Pay Later,Cash on Delivery')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text(
                          "Can I pay online during the delivery of the product?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'You can pay by scanning the QR available on the invoice using any UPI app at the time of delivery. Please check with the delivery executive to assist you.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text(
                          "How much time will it take to get the refund of a cancelled/returned order?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'Refund against a cancelled or return product may take up to 7 working days depending on the payment instrument used to place the order.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    SizedBox(height: 15),
                    Text(
                      " Delivery",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 6),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text("How will I know if JioMart delivers to my area?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'You can check the serviceability of your area while selecting your pin code when you place your order.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    ExpansionTile(
                      textColor: Colors.black,
                      iconColor: Colors.black,
                      title: Text(
                          "How can I check for an expected date of delivery of an order I placed?",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start),
                      children: [
                        ListTile(
                            title: Text(
                                'You can check for an estimated date of delivery on the product description page by entering your pin code. Date of delivery may vary from product to product and is also dependent on the pin code of the delivery address. We try our best to delivery your orders as early as possible.')),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,indent: 13,endIndent: 13,),
                    SizedBox(height: 25),
                    Text(
                      "  Have an issue with your order?",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                        text: 'Email at:  ',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black , fontSize: 14),
                        children: [
                          TextSpan(
                            text: 'cs@grofers.com',
                            style: TextStyle(color: Colors.blue,)
                          )
                        ]
                      )),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                        text: 'Call on:  ',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black , fontSize: 14),
                        children: [
                          TextSpan(
                            text: '9999999999',
                            style: TextStyle(color: Colors.blue,)
                          )
                        ]
                      )),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        "  8:00 AM to 8:00 PM, 365 days",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
