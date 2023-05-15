//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: ProductDetails(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
// class ProductDetails extends StatefulWidget {
//   const ProductDetails({Key? key}) : super(key: key);
//
//   @override
//   State<ProductDetails> createState() => _ProductDetailsState();
// }
//
// class _ProductDetailsState extends State<ProductDetails> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade100,
//       appBar: AppBar(
//         foregroundColor: Colors.black,
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text("Grocers"),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.black,
//           ),
//           onPressed: () {
//             // Navigator.of(context).pop();
//           },
//
//         ),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.share,
//                 color: Colors.black,
//
//               )
//           )
//         ],
//
//
//       ),
//       body: Center(
//         child: ListView(
//           children: [
//             Image.network(
//               'https://picsum.photos/250?image=9',
//               width: 300,
//               height: 300,
//             ),
//             const SizedBox(height: 40),
//             Expanded(
//               child: Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   ),
//                 ),
//                 child:Center(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       const SizedBox(height: 20,),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             const Expanded(
//                               child: Text(
//                                 "Amul Kool Kesar Flavoured Milk 180 ml (Bottle)",
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 30,
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
//                               },
//                               child: Container(
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 16,
//                                   vertical: 14,
//                                 ),
//                                 decoration: BoxDecoration(
//                                     color: Colors.deepOrangeAccent,
//                                     borderRadius: BorderRadius.circular(8)
//                                 ),
//                                 child: const Text(
//                                   "Add to Cart",
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 10,),
//                       const Text("In Stock",
//                         style: TextStyle(fontSize: 15, color: Colors.green),
//                         textAlign: TextAlign.start,),
//                       const SizedBox(height: 10,),
//                       const Text("Check Estimated Delivery", style: TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold),
//                         textAlign: TextAlign.start,),
//                       TextField(
//                             decoration: InputDecoration(
//                               prefixIcon: Icon(Icons.room , color: Colors.grey,),
//                               suffix: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: Colors.grey,
//                                 ),
//                                 onPressed: () {},
//                                 child: Text('Apply' , style: TextStyle(color: Colors.white),)
//                               ),
//                             ),
//
//                   ),
//                       SizedBox(height: 10,),
//                       const Text("Features & Details", style: TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("Ideal substitute for aerated drinks", style: TextStyle(
//                           fontSize: 16),
//                           textAlign: TextAlign.start),
//                       const SizedBox(height: 10),
//                       const Divider(thickness: 1,color: Colors.grey,),
//                       const Text("Description", style: TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("Flavoured milk is one of the best options to make children have milk without any complaints. It endures all the proteins from milk along with giving an added flavour for tasty consumption. Moreover, its packaging makes it easier to stock up or carry while travelling. A yummy treat for both adults and children, buy Amul Kool Kesar Flavoured Milk online today!", style: TextStyle(
//                           fontSize: 16),
//                           textAlign: TextAlign.start),
//                       const Text("Disclaimer:", style: TextStyle(
//                           fontSize: 18, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("Despite our attempts to provide you with the most accurate information possible, the actual packaging, ingredients and colour of the product may sometimes vary. Please read the label, directions and warnings carefully before use.", style: TextStyle(
//                           fontSize: 16),
//                           textAlign: TextAlign.start),
//                       const SizedBox(height: 10),
//                       const Divider(thickness: 1,color: Colors.grey,),
//
//                       const Text("Product Information", style: TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("General Information", style: TextStyle(
//                           fontSize: 19, fontWeight: FontWeight.w800,color: Colors.grey),
//                           textAlign: TextAlign.start),
//                   const SizedBox(height: 10) ,
//                       const Text("Brand", style: TextStyle(
//                           fontSize: 19, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("Amul",style: TextStyle(fontSize: 16),
//
//                       ),
//                   const SizedBox(height: 10),
//                   const Text("Manufacturer", style: TextStyle(
//                       fontSize: 19, fontWeight: FontWeight.bold),
//                       textAlign: TextAlign.start),
//                   const Text("GCMMF Ltd.",style: TextStyle(fontSize: 16),
//
//                   ),
//                       const SizedBox(height: 10),
//                       const Text("Manufacturer Address", style: TextStyle(
//                           fontSize: 19, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("Gujarat Co-Operative Milk Marketing Federation Ltd.Anand 388001, Gujarat, India.Amulfed Dairy (A Unit Of Gcmmf Ltd.)Bhat 382428, District Gandhinagar, India.Panchmahal District Co-Operative Milk Producers Union Ltd.Godhra 389001, India.Banaskantha District Co-Operative Milk Producers Union Ltd.Banas Dairy, Plot No. 921-922, Sector - 68, I.M.T., Feridabad (Haryana) - 121004, Gujarat",style: TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(height: 10),
//                       const Text("Manufacturer Email", style: TextStyle(
//                           fontSize: 19, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("customercare@amul.coop",style: TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(height: 10),
//                       const Text("Manufacturer Website", style: TextStyle(
//                           fontSize: 19, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("www.amul.com",style: TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(height: 10),
//                       const Text("Grocers Customer Care Email", style: TextStyle(
//                           fontSize: 19, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("cs@grocers.com",style: TextStyle(fontSize: 16),
//                       ),
//                     const SizedBox(height: 10),
//                       const Text("Country of Origin", style: TextStyle(
//                           fontSize: 19, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("India",style: TextStyle(fontSize: 16),
//                       ),
//                       const Text("PRODUCT SPECIFICATIONS", style: TextStyle(
//                           fontSize: 19, fontWeight: FontWeight.w800,color: Colors.grey),
//                           textAlign: TextAlign.start),
//                       const SizedBox(height: 10),
//                       const Text("Net Quantity", style: TextStyle(
//                           fontSize: 19, fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.start),
//                       const Text("180 ml",style: TextStyle(fontSize: 16),
//                       ),
//
//                         ],
//
//                   ),
//                 ),
//                 )
//               ),
//             ),
//           ],
//         ),
//
//       ),
//     );
//   }
//
//
// }
import 'package:flutter/material.dart';

import 'Products/Cold drinks and juices/pepsi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductDetails(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  // int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Pepsi(),
    );
  }

}

// import 'package:flutter/material.dart';
// import 'package:productdetails/product_structure.dart';
// import 'package:productdetails/appbar.dart';
//
// class Maida extends StatelessWidget {
//   const Maida({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildApp(),
//       body: productdescp(
//           title: title,
//           fdtitle: fdtitle,
//           description: description,
//           disclaimer: disclaimer,
//           brand_name: brand_name,
//           manu: manu,
//           address: address,
//           m_email: m_email,
//           m_website: m_website,
//           net_quantity: net_quantity,
//           img1: img1,
//           img2: img2,
//           img3: img3,
//           img4: img4,
//           price: price),
//     );
//   }
// }
