import 'package:flutter/material.dart';
import 'package:wise_meal/components/custom_elements.dart';
import 'package:wise_meal/utils/colors.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    final double screenSize = MediaQuery.of(context).size.width;
    final double containerWidth =
        screenSize > 600 ? screenSize * 0.8 : screenSize * 0.9;
    // Define the footer sections
    List<FooterSection> footerSections = [
      FooterSection(
        heading: 'WISE',
        links: [
          {'text': 'About', 'url': 'https://example.com/privacy'},
          {'text': 'Shop', 'url': 'https://example.com/privacy'},
          {'text': 'How to use', 'url': 'https://example.com/privacy'},
          {'text': 'Story', 'url': 'https://example.com/privacy'},
          {'text': 'Contacts', 'url': 'https://example.com/privacy'},
        ],
      ),
      FooterSection(
        heading: 'SHOP',
        links: [
          {'text': 'How to order', 'url': 'https://example.com/privacy'},
          {'text': 'Shipping', 'url': 'https://example.com/privacy'},
          {'text': 'Privacy Policy', 'url': 'https://example.com/privacy'},
          {
            'text': 'Sales terms & conditions',
            'url': 'https://example.com/privacy'
          },
          {'text': 'Returning goods', 'url': 'https://example.com/privacy'},
        ],
      ),
      FooterSection(
        heading: 'EXPLORE',
        links: [
          {'text': 'Story & Programs', 'url': 'https://example.com/privacy'},
          {'text': 'Testimonials', 'url': 'https://example.com/privacy'},
          {'text': 'Invitation Link', 'url': 'https://example.com/privacy'},
        ],
      ),
    ];
    return SizedBox(
      width: containerWidth,
      child: Column(
        children: [
          // Add spacing between items
          if (screenSize < 600)
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...footerSections.map((section) => FooterColumns(
                    sections: [section])) // Wrap the section in a list
                ,
                if (screenSize > 600)
                  const SizedBox(
                      width: 200,
                      child: Text(
                          'Now, Wise Meal offers a range of backup meals that cater to the needs of busy professionals and active parents. We\'ve become more than just a convenient and nutritious solution—we\'re a lifeline for those who need it most.'))
              ],
            ),
          if (screenSize > 600)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              // spacing: 18.0, // gap between adjacent chips
              // runSpacing: 14.0, // gap between lines
              children: [
                ...footerSections.map((section) => FooterColumns(
                    sections: [section])) // Wrap the section in a list
                ,
                if (screenSize > 600)
                  const SizedBox(
                      width: 200,
                      child: Text(
                          'Now, Wise Meal offers a range of backup meals that cater to the needs of busy professionals and active parents. We\'ve become more than just a convenient and nutritious solution—we\'re a lifeline for those who need it most.'))
              ],
            ),

          const SizedBox(height: 30),
          // Add spacing between items
          if (screenSize < 600)
            const Wrap(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'service available',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                        ), // Right arrow icon
                      ],
                    ),
                    Text(
                      'Monday - Friday: 09:00 - 18:00',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'service available',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                        ), // Right arrow icon
                      ],
                    ),
                    Text(
                      'Monday - Friday: 09:00 - 18:00',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          if (screenSize > 600)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'service available',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                        ), // Right arrow icon
                      ],
                    ),
                    Text(
                      'Monday - Friday: 09:00 - 18:00',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'service available',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                        ), // Right arrow icon
                      ],
                    ),
                    PrimaryButtonWidget(
                      text: 'Sign Up',
                      onPressed: () {
                        print('Sign Up button pressed');
                      },
                    ),
                  ],
                )
              ],
            ),

          const SizedBox(height: 30), // Add spacing between items
          if (screenSize > 600)
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'WISE',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.logoColor),
                )
              ],
            ),
          const SizedBox(height: 30), // Add spacing between items
        ],
      ),
    );
  }
}
