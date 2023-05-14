import 'package:flutter/material.dart';
import 'package:productdetails/appbar.dart';
import 'package:productdetails/product_structure.dart';

class AmulKool extends StatelessWidget {
  const AmulKool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildApp(),
      body: productdescp(
        title: 'Amul Kool Kesar Flavoured Milk 180 ml (Bottle)',
        fdtitle: 'Ideal substitute for aerated drinks',
        description:
            'Flavoured milk is one of the best options to make children have milk without any complaints. It endures all the proteins from milk along with giving an added flavour for tasty consumption. Moreover, its packaging makes it easier to stock up or carry while travelling. A yummy treat for both adults and children, buy Amul Kool Kesar Flavoured Milk online today!',
        brand_name: "Amul",
        manu: "	GCMMF Ltd.",
        address:
            "Gujarat Co-Operative Milk Marketing Federation Ltd.Anand 388001, Gujarat, India.Amulfed Dairy (A Unit Of Gcmmf Ltd.)Bhat 382428, District Gandhinagar, India.Panchmahal District Co-Operative Milk Producers Union Ltd.",
        m_email: "customercare@amul.coop",
        m_website: 'www.amul.com',
        net_quantity: "	180 ml",
        img1: 'assets/images/product1.jpeg',
        img2: 'assets/images/product12.jpeg',
        img3: "assets/images/product13.jpeg",
        img4: "assets/images/product14.jpeg",
        price: 22,
      ),
    );
  }
}