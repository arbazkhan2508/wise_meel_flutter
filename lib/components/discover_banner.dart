import 'package:flutter/material.dart';
import 'package:wise_meal/components/custom_elements.dart';

class DiscoverBannerWidget extends StatelessWidget {
  const DiscoverBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Image.asset(
          'assets/images/DiscoverBg.png',
          width: screenWidth,
          // height: 400,
          fit: BoxFit.cover,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 140.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'WISE me(al)',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Our story.',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                const SizedBox(height: 40.0),
                const SizedBox(
                  width: 600, // Set the maximum width
                  child: Text(
                    'The journey to develop Wise Meal was anything but easy. It took countless hours, late nights, and unwavering dedication to create an honest product that I could stand behind.',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 40.0),
                PrimaryButtonWidget(
                  text: 'Discover More',
                  onPressed: () => {''},
                ),
              ],
            ))
      ],
    );
  }
}
