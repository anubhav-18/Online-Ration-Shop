import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class productdescp extends StatelessWidget {
  const productdescp({
    super.key,
    // required this.productId ,
    // required this.categoryId ,
    required this.title,
    required this.fdtitle,
    required this.description,
    required this.brand_name,
    required this.manu,
    required this.address,
    required this.m_email,
    required this.m_website,
    required this.net_quantity,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.img4,
    required this.price,


  });

  final String title , fdtitle , description , brand_name, manu , address, m_email,m_website,net_quantity, img1 , img2 , img3 , img4 ;
  final int price ;
  // productId , categoryId ;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(img1),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(img2),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(img3),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(img4),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
            ],
            options: CarouselOptions(
                height: 250,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                initialPage: 0,
                viewportFraction: 1

            )),

        const SizedBox(height: 10),
        Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 0 , right: 8 , bottom: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(title,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(width: 30),
                          InkWell(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.deepOrangeAccent,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text('\u{20B9} ${price}' , style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: const Text(
                        "In Stock",
                        style: TextStyle(fontSize: 15, color: Colors.green),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Check Estimated Delivery",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.room,
                          color: Colors.grey,
                        ),
                        suffix: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Apply',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Features & Details",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    Text(fdtitle,
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.start),
                    const SizedBox(height: 10),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    const Text("Description",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    Text(description,
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.start),
                    const SizedBox(height: 10),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    const Text("Product Information",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    const Text("General Information",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey),
                        textAlign: TextAlign.start),
                    const SizedBox(height: 10),
                    const Text("Brand",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                     Text(
                      brand_name,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text("Manufacturer",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                     Text(
                      manu,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text("Manufacturer Address",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                     Text(
                       address,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text("Manufacturer Email",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                     Text(
                      m_email,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text("Manufacturer Website",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                   Text(
                      m_website,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text("Grocers Customer Care Email",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    const Text(
                      "cs@grocers.com",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    const Text("Country of Origin",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    const Text(
                      "India",
                      style: TextStyle(fontSize: 16),
                    ),
                    const Text("PRODUCT SPECIFICATIONS",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey),
                        textAlign: TextAlign.start),
                    const SizedBox(height: 10),
                    const Text("Net Quantity",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                     Text(
                      net_quantity,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            )
        ),

      ],

    );
  }
}


class carouselItems extends StatelessWidget {
  const carouselItems({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
