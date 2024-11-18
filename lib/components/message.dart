import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerWidth =
        screenWidth > 600 ? screenWidth * 0.6 : screenWidth * 0.9;
    final double fontSize = screenWidth > 600 ? 20 : 14;
    return Container(
      width: containerWidth,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Image.asset(
            'assets/Images/quoteImg.png',
            height: 50,
          ),
          const SizedBox(height: 16), // Adds spacing between image and text
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize,
                  height: 1.5), // Default text color
              children: const [
                TextSpan(
                    text: 'Wise Meal ', style: TextStyle(color: Colors.green)),
                TextSpan(
                  text:
                      'is about community of like-minded individuals who understand the importance of nourishing our bodies while also making the most of every moment. ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'nourishing our bodies',
                  style: TextStyle(color: Colors.green),
                ),
                TextSpan(
                  text: '  while also making the most of every moment.',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
