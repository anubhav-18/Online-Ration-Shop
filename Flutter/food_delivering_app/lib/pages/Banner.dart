import 'package:flutter/material.dart';

class Banner extends StatelessWidget {
  const Banner({
    super.key, 
    this.image,
  });

  final image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
