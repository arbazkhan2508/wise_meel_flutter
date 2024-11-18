import 'package:flutter/material.dart';
import 'package:wise_meal/components/custom_elements.dart';
import 'package:wise_meal/utils/colors.dart';

class BannerSectionWidget extends StatelessWidget {
  const BannerSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine padding based on screen width
        EdgeInsetsGeometry padding = constraints.maxWidth > 800
            ? const EdgeInsets.all(140.0) // Padding for large screens
            : const EdgeInsets.all(20.0); // Padding for small screens

        return Container(
          color: AppColors.bannerColor,
          child: Padding(
            padding: padding,
            child: constraints.maxWidth > 800
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child:
                            ContentSection(), // Ensure ContentSection takes available space
                      ),
                      SizedBox(
                        width: 400, // Fixed width for image on large screens
                        child: BannerImgSection(),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ContentSection(),
                      const SizedBox(
                          height:
                              16.0), // Space between ContentSection and BannerImgSection
                      const SizedBox(
                        width: double
                            .infinity, // Ensure image takes full width on small screens
                        child: BannerImgSection(),
                      ),
                      const SizedBox(height: 16.0),
                      PrimaryButtonWidget(
                        text: 'Shop Now',
                        onPressed: () {
                          print('Sign Up button pressed');
                        },
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
          ),
        );
      },
    );
  }
}

class ContentSection extends StatelessWidget {
  const ContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Determine if the screen width is large enough
          bool isLargeScreen = constraints.maxWidth > 800;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lai Tava ikdiena būtu gaisīgi viegla',
                textAlign: TextAlign.start,
                style: AppHeadings.heading2(context),
              ),
              const SizedBox(height: 8.0), // Space between texts
              const Text(
                'Izmantotas tikai pārbaudītas augu izcelsmes sastāvdaļas',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16.0, color: AppColors.buttonColor),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListItem(
                      icon: Icons.check_circle_outline,
                      title: 'Kvalitāte',
                      subtitle: 'autentiska krāsa un garša no dabas',
                    ),
                    ListItem(
                      icon: Icons.check_circle_outline,
                      title: 'Kvalitāte',
                      subtitle: 'autentiska krāsa un garša no dabas',
                    ),
                    ListItem(
                      icon: Icons.check_circle_outline,
                      title: 'Kvalitāte',
                      subtitle: 'autentiska krāsa un garša no dabas',
                    ),
                    ListItem(
                      icon: Icons.check_circle_outline,
                      title: 'Kvalitāte',
                      subtitle: 'autentiska krāsa un garša no dabas',
                    ),
                    // Add more ListItem widgets here
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              if (isLargeScreen) // Conditionally render the button based on screen size
                PrimaryButtonWidget(
                  text: 'Shop Now',
                  onPressed: () => {''},
                ),
            ],
          );
        },
      ),
    );
  }
}

class BannerImgSection extends StatelessWidget {
  const BannerImgSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: 400,
          width: constraints.maxWidth, // Ensure the width is constrained
          child: Center(
            child: Image.asset(
              'assets/images/BannerImg.png',
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
