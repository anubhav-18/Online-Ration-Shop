import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/constants.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address Page'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Text(
                    'Saved Addresses',
                    style: TextStyle(
                        letterSpacing: -1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
              ],
            ),
            Container(height: 20,),
            Container(
              padding: EdgeInsets.only(top : 10 , left: 15 , right: 10),
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(20), 
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Anubhav Bindal' , 
                        style: TextStyle(
                          fontSize: 15 , 
                          letterSpacing: -1,
                          fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.more_vert, color: bckGrndColor,)
                    ],
                  ),
                  RichText(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.end,
                    textDirection: TextDirection.rtl,
                    softWrap: true,
                    maxLines: 3,
                    textScaleFactor: 1,
                    text: TextSpan(
                      
                      text: '156/35, Neerav Nikunj, Sikandra, Agra, in fornt of kk bar, Agra, Uttar Pradesh, 282007',
                      style: TextStyle(fontSize: 10, color: Colors.black.withOpacity(0.8),),
                      
                    ))
                ],
              ),
            ),
          ],
        ),
      ),
      //Bottom Button
      bottomNavigationBar: Material(
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.5))),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.black.withOpacity(0.5))),
                height: 45,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: 25,
                    ),
                    Text(
                      'Add New Address',
                      style: TextStyle(
                        fontSize: 19,
                        color: bckGrndColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
