import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FAQ(),
    );
  }
}

class FAQ extends StatefulWidget {
  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text("Help & Support"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 120, horizontal: 10),
        // margin: EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              " FAQ's",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              " Frequently Asked Question:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              " Check out this section to get answers for all the  frequently asked questions.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            Text(
              " Product / Price / Promotion",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            ExpansionTile(
              title: Text("How do I look for a particular Product?",
                  style: TextStyle(fontSize: 17), textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'You can search for a product by navigating through the category pages or by using search tab on the top of every page.')),
              ],
            ),
            ExpansionTile(
              title: Text("How will you ensure the freshness of products?",
                  style: TextStyle(fontSize: 17), textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'We ensure that all our products are hygienically and carefully handled and maintain them in the correct temperature & packaging.')),
              ],
            ),
            ExpansionTile(
              title: Text(
                  "How can I check if the product I am ordering is in stock?",
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'You can prepare your cart and select the address you want the order to be delivered at. The availability of the product will be dependent on the selected address. Product without availability will be shown as ‘Out of stock’. You may remove them or add similar products as per your convenience.')),
              ],
            ),
            SizedBox(height: 20),
            Text(
              " Ordering",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            ExpansionTile(
              title: Text("How do I know if I placed my order correctly?",
                  style: TextStyle(fontSize: 17), textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'Upon the successful completion of your order, an order confirmation e-mail and SMS containing your order details will be sent to your registered email ID and phone number.')),
              ],
            ),
            ExpansionTile(
              title: Text("Can I call and place an order?",
                  style: TextStyle(fontSize: 17), textAlign: TextAlign.start),
              children: [
                ListTile(
                    title:
                        Text('No, currently this service is not available.')),
              ],
            ),
            ExpansionTile(
              title: Text("How do I make changes to my order?",
                  style: TextStyle(fontSize: 17), textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'Currently, there is no provision to modify the order once it is placed. You may cancel the order until it is shipped. You may request for a return of the ordered product as per the return policy.')),
              ],
            ),
            SizedBox(height: 20),
            Text(
              " Payment",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            ExpansionTile(
              title: Text(
                  "What are the various modes of payment I can use for shopping?",
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'You can pay for your order using the following modes of payment: UPI,Credit Card / Debit Card,Netbanking,e-Wallets,Meal Cards,Pay Later,Cash on Delivery')),
              ],
            ),
            ExpansionTile(
              title: Text(
                  "Can I pay online during the delivery of the product?",
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'You can pay by scanning the QR available on the invoice using any UPI app at the time of delivery. Please check with the delivery executive to assist you.')),
              ],
            ),
            ExpansionTile(
              title: Text(
                  "How much time will it take to get the refund of a cancelled/returned order?",
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'Refund against a cancelled or return product may take up to 7 working days depending on the payment instrument used to place the order.')),
              ],
            ),
            SizedBox(height: 20),
            Text(
              " Delivery",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            ExpansionTile(
              title: Text("How will I know if JioMart delivers to my area?",
                  style: TextStyle(fontSize: 17), textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'You can check the serviceability of your area while selecting your pin code when you place your order.')),
              ],
            ),
            ExpansionTile(
              title: Text(
                  "How can I check for an expected date of delivery of an order I placed?",
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.start),
              children: [
                ListTile(
                    title: Text(
                        'You can check for an estimated date of delivery on the product description page by entering your pin code. Date of delivery may vary from product to product and is also dependent on the pin code of the delivery address. We try our best to delivery your orders as early as possible.')),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "  Have an issue with your order?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "  Email at: cs@grofers.com",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "  Call on: *********",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            Text(
              "  8:00 AM to 8:00 PM, 365 days",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
