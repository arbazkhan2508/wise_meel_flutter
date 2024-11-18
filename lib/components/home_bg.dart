import 'package:flutter/material.dart';
import 'package:wise_meal/components/custom_elements.dart';
import 'package:wise_meal/utils/colors.dart';

class HomeBgSection extends StatelessWidget {
  const HomeBgSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the total height and width of the screen
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Define the height you want to subtract (e.g., for AppBar or padding)
    const appBarHeight = 80.0; // Example value

    // Determine the logo URL based on screen width
    final logoUrl = screenWidth > 600
        ? 'assets/images/WiseBg.png'
        : 'assets/images/WiseBgMobile.png';

    return SizedBox(
      height: screenHeight - appBarHeight, // Adjust as needed
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(logoUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3), // Semi-transparent overlay
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width > 600
                  ? MediaQuery.of(context).size.width * 0.7
                  : MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Vērtīgākais "fast" food steidzīgā ikdienā, garā ceļojumā vai piedzīvojumā dabā',
                    textAlign: TextAlign.center,
                    style: AppHeadings.heading1(context),
                  ),
                  const SizedBox(
                      height: 40), // Add space between text and button
                  PrimaryButtonWidget(
                    text: 'Shop Now',
                    onPressed: () {
                      // Handle button press
                      print('Button pressed!');
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
