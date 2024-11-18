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
    return SizedBox(
      width: containerWidth,
      child: Column(
        children: [
          const SizedBox(height: 30), // Add spacing between items
          Wrap(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 18.0, // gap between adjacent chips
            runSpacing: 14.0, // gap between lines
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'WISE',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 15,
                      ), // Right arrow icon
                    ],
                  ),
                  const SizedBox(height: 16), // Add spacing between items
                  footerLink('About', 'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('Shop', 'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('How to use', 'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('Story', 'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('Contacts', 'https://example.com/privacy'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'SHOP',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 15,
                      ), // Right arrow icon
                    ],
                  ),
                  const SizedBox(height: 16), // Add spacing between items
                  footerLink('How to order', 'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('Shipping', 'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('Privacy Policy', 'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('Sales terms & conditions',
                      'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('Returning goods', 'https://example.com/privacy'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        'EXPLORE',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 15,
                      ), // Right arrow icon
                    ],
                  ),
                  const SizedBox(height: 16), // Add spacing between items
                  footerLink(
                      'Story & Programms', 'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('Testimonials', 'https://example.com/privacy'),
                  const SizedBox(height: 8), // Add spacing between items
                  footerLink('Invitation Link', 'https://example.com/privacy'),
                ],
              ),
              if (screenSize > 600)
                const SizedBox(
                    width: 200,
                    child: Text(
                        'Now, Wise Meal offers a range of backup meals that cater to the needs of busy professionals and active parents. We ve become more than just a convenient and nutritious solution—we re a lifeline for those who need it most.'))
            ],
          ),
          const SizedBox(height: 30), // Add spacing between items
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
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
                      fontSize: 20,
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

Widget footerLink(String text, String url) {
  return InkWell(
    onTap: () => {''},
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.black, // Link color
        decoration: TextDecoration.none, // Underline the link
      ),
    ),
  );
}
