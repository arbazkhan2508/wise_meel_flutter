import 'package:flutter/material.dart';
import 'package:wise_meal/components/custom_elements.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > 600
          ? const EdgeInsets.all(16)
          : const EdgeInsets.all(0),
      child: Column(
        children: [
          const HeadingWidget(
            heading: 'WISE category',
            desc: 'Corem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
          const SizedBox(height: 60),
          if (MediaQuery.of(context).size.width > 600) ...[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageWithText(
                    imagePath: 'assets/images/Category1.png',
                    heading: 'snack',
                  ),
                  SizedBox(width: 30),
                  ImageWithText(
                    imagePath: 'assets/images/Category2.png',
                    heading: 'meal',
                  ),
                ],
              ),
            ),
          ] else ...[
            const Column(
              children: [
                ImageWithText(
                  imagePath: 'assets/images/Category1.png',
                  heading: 'snack',
                ),
                SizedBox(height: 30),
                ImageWithText(
                  imagePath: 'assets/images/Category2.png',
                  heading: 'meal',
                ),
              ],
            ),
          ],
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}

class ImageWithText extends StatelessWidget {
  final String imagePath;
  final String heading;

  const ImageWithText({
    super.key,
    required this.imagePath,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      alignment: screenWidth > 600 ? Alignment.bottomLeft : Alignment.center,
      children: [
        Image.asset(
          imagePath,
          width: screenWidth > 600 ? screenWidth * 0.3 : screenWidth * 0.6,
          height: screenWidth > 600 ? 500 : 300,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0), // Adjust the padding as needed
          child: Text(
            heading,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        )
      ],
    );
  }
}
