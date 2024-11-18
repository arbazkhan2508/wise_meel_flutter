import 'package:flutter/material.dart';
import 'package:wise_meal/utils/colors.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/Ing1.png',
      'assets/images/Ing2.png',
      'assets/images/Ing3.png',
      'assets/images/Ing4.png',
      'assets/images/Ing5.png',
      'assets/images/Ing6.png',
      'assets/images/Ing7.png',
      'assets/images/Ing8.png',
    ];

    return Padding(
      padding: const EdgeInsets.all(30.0), // Adjusted padding for better layout
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Kāds ir WISE meal noslēpums?',
            textAlign: TextAlign.center,
            style: AppHeadings.heading2(context),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Corem ipsum dolor sit amet, consectetur adipiscing elit.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
          const SizedBox(height: 18.0),
          Wrap(
            spacing: 16.0, // gap between adjacent items
            runSpacing: 16.0, // gap between lines
            children: imagePaths.map((path) {
              return Image.asset(path, width: 150, height: 150);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
