import 'package:flutter/material.dart';

class Contact_Us extends StatefulWidget {
  const Contact_Us({super.key});

  @override
  State<Contact_Us> createState() => _Contact_UsState();
}

class _Contact_UsState extends State<Contact_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 10,left: 10,right: 10),
        margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: 10),
            Text(
              "CONTACT US                                                                     ",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
               "We are committed to provide you with the best possible support. Here's how you can get in touch with us:",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,),
      
            SizedBox(height: 10),
            Text(
              "Level-1 Customer Support                                             ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "WhatsApp us: **********                                                  ",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "Email at: cs@grofers.com                                               ",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "Call on: *********                                                               ",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            Text(
              "8:00 AM to 8:00 PM, 365 days                                             ",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
      
            SizedBox(height: 15),
            Text(
              "Concerns not addressed?                                                                            ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            Text(
              "It is our endeavour to respond and address your concerns on priority. Our team is continuously working to ensure best of our support. In case of any issue/concern of complex nature it may require additional time to resolve.",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "In the event of any unlikely situation if your concerns are not addressed satisfactorily, you may communicate direct to our higher authorities.",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "To facilitate easy access we have aligned following communication structure for the concerns not addressed satisfactorily:",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
      
            SizedBox(height: 10),
            Text(
              "Level-2: Escalation                                                              ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "Email to CS Head at: cshead@grofers.com                ",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "This being the final level redress for your grievances, please provide us the previous communication and related resolution offered in earlier stages, so that we may have a comprehensive understanding of the matter.",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              "We value your time and we are committed to ensure satisfaction in all your interactions with us.",style: TextStyle(fontSize: 16),textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}