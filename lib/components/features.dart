import 'package:flutter/material.dart';
import 'package:wise_meal/components/custom_elements.dart';

class Product {
  final String img;
  final String heading;
  final String text;

  Product({
    required this.img,
    required this.heading,
    required this.text,
  });
}

class FeaturesWidget extends StatelessWidget {
  final List<Product> products = [
    Product(
      img: 'assets/images/F!.png',
      heading: 'Augu izcelsmes produkti',
      text: 'Jorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    Product(
      img: 'assets/images/F!.png',
      heading: 'Augu izcelsmes produkti',
      text: 'Jorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    Product(
      img: 'assets/images/F!.png',
      heading: 'Augu izcelsmes produkti',
      text: 'Jorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    Product(
      img: 'assets/images/F!.png',
      heading: 'Augu izcelsmes produkti',
      text: 'Jorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
    Product(
      img: 'assets/images/F!.png',
      heading: 'Augu izcelsmes produkti',
      text: 'Jorem ipsum dolor sit amet, consectetur adipiscing elit.',
    ),
  ];

  FeaturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.9, // Adjusted to match comment
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60.0),
            const HeadingWidget(
              heading: 'Kāds ir WISE meal noslēpums?',
              desc: 'Corem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            const SizedBox(height: 60.0),
            Wrap(
              spacing: 16.0, // Space between items horizontally
              runSpacing: 16.0, // Space between items vertically
              children: products.map((product) {
                return FeatureCard(
                  img: product.img,
                  heading: product.heading,
                  text: product.text,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
