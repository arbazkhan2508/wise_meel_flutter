import 'package:flutter/material.dart';
import 'package:wise_meal/components/custom_elements.dart';
import 'package:wise_meal/utils/colors.dart';

class Product {
  final String img;
  final double totalPrice;
  final String pack;

  Product({
    required this.img,
    required this.totalPrice,
    required this.pack,
  });
}

class PopularProductWidget extends StatefulWidget {
  const PopularProductWidget({super.key});

  @override
  State<PopularProductWidget> createState() => _PopularProductState();
}

class _PopularProductState extends State<PopularProductWidget> {
  // Define a list of products
  final List<Product> products = [
    Product(
      img: 'assets/images/Energy1.png',
      totalPrice: 39.90,
      pack: 'Pack of 10',
    ),
    Product(
      img: 'assets/images/Energy2.png',
      totalPrice: 49.90,
      pack: 'Pack of 20',
    ),
    Product(
      img: 'assets/images/Energy3.png',
      totalPrice: 79.90,
      pack: 'Pack of 12',
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: FractionallySizedBox(
        widthFactor: 0.8, // Set width to 80% of the parent
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                  40.0), // Adjust the padding value as needed
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Adjusts the height of the Column to fit its children
                children: [
                  Text(
                    'Popular products',
                    textAlign: TextAlign.center,
                    style: AppHeadings.heading2(context),
                  ),
                  const SizedBox(
                    height: 8.0, // Adds space between the two text widgets
                  ),
                  const Text(
                    'Order it for you or for your beloved ones',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView(
                scrollDirection: Axis.horizontal, // Allows horizontal scrolling
                children: products.map((product) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: CustomCard(
                      img: product.img,
                      totalPrice: product.totalPrice,
                      pack: product.pack,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
