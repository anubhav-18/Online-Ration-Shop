import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Categories/Product_Struct.dart';
import 'package:food_delivering_app/pages/HomePage/appbar.dart';
import 'package:food_delivering_app/pages/cart/cartpage.dart';
import 'package:food_delivering_app/pages/DrawerPage/About_Us.dart';
import 'package:food_delivering_app/pages/constants.dart';
class Frooti extends StatelessWidget {
  const Frooti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bckGrndColor,
        title: Text('Grocers'),
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
      body: productdescp(
          title: 'Frooti Mango Drink 2 L',
          fdtitle: 'Tasty & refreshing',
          description: 'Turn your day around with Frooti Mango Drink! All it takes is a glass and a bit of ice. Delicious and refreshing - there''s no other way to describe it. Let your taste buds sink with a delightful burst of mango flavour. Have it cold or at room temperature, and satisfy your craving for a refreshing treat that will keep you yearning for more. So go ahead, and buy this product online today!',
          brand_name: 'Frooti',
          manu: 'Parle Agro',
          address: '401/402, Abhijit - 2, Above Standard Chartered Bank,Nr. Mithakhali Six Road, Navrangpura,Ahmedabad 380009',
          m_email: 'info@parleagro.com',
          m_website: 'www.parleagro.com',
          net_quantity: '2 L',
          img1: 'assets/images/productimages/frooti1.jpeg',
          img2: 'assets/images/productimages/frooti2.jpeg',
          img3: 'assets/images/productimages/frooti3.jpeg',
          img4: 'assets/images/productimages/frooti4.jpeg',
          price: 91),
    );
  }
}
