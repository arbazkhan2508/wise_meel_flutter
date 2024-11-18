import 'package:flutter/material.dart';
import 'package:wise_meal/utils/colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double elevation;

  const PrimaryButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.elevation = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Use the provided onPressed callback
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonColor,
        padding: MediaQuery.of(context).size.width > 600
            ? const EdgeInsets.fromLTRB(42.0, 18.0, 42.0, 18.0)
            : const EdgeInsets.fromLTRB(42.0, 14.0, 42.0, 14.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        elevation: elevation, // Use the provided elevation
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class FooterSection {
  final String heading;
  final List<Map<String, String>> links; // List of links with text and URL

  FooterSection({required this.heading, required this.links});
}

class FooterColumns extends StatelessWidget {
  final List<FooterSection> sections;

  const FooterColumns({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Ensure left alignment
      mainAxisAlignment: MainAxisAlignment.start,
      children: sections.map((section) {
        return Padding(
          padding:
              const EdgeInsets.only(bottom: 16), // Add spacing between sections
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Ensure left alignment
            children: [
              Row(
                mainAxisSize:
                    MainAxisSize.min, // Ensure Row takes minimum width
                children: [
                  Text(
                    section.heading,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4), // Add spacing between text and icon
                  const Icon(
                    Icons.arrow_forward,
                    size: 15,
                  ), // Right arrow icon
                ],
              ),
              const SizedBox(height: 16), // Spacing below heading
              ...section.links.map((link) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8), // Spacing between links
                  child: footerLink(link['text']!, link['url']!),
                );
              }).toList(),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String img;
  final double totalPrice;
  final String pack;

  const CustomCard({
    super.key,
    required this.img,
    required this.totalPrice,
    required this.pack,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400, // Define a fixed width for the card
          height: 400,
          child: Card(
            color:
                AppColors.cardColor, // Use a Color object for backgroundColor
            margin: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2), // Remove border radius
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.8, // 80% width of the parent
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'New',
                          style: TextStyle(color: Colors.black), // Text styling
                        ),
                        Icon(Icons.favorite_border_outlined,
                            color: Colors.black), // Icon color
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FractionallySizedBox(
                    widthFactor: 0.8, // 80% width of the parent
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(pack, style: const TextStyle(color: Colors.black)),
                        Text('EUR ${totalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        SizedBox(
          width: 400, // Set the width of the button to match the card's width
          child: ElevatedButton.icon(
            onPressed: () {
              // Handle button press
              print('Button pressed!');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
              padding: MediaQuery.of(context).size.width > 600
                  ? const EdgeInsets.fromLTRB(42.0, 18.0, 42.0, 18.0)
                  : const EdgeInsets.fromLTRB(42.0, 14.0, 42.0, 14.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            label: const Text(
              'Add to Cart',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black, // Customize the color as needed
            size: 18.0,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: '$title: ',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondaryColor,
                ),
                children: [
                  TextSpan(
                    text: subtitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String img;
  final String heading;
  final String text;

  const FeatureCard({
    super.key,
    required this.img,
    required this.heading,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250, // Define a fixed width for the card
          height: 250,
          child: Card(
              color:
                  AppColors.cardColor, // Use a Color object for backgroundColor
              margin: const EdgeInsets.all(8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2), // Remove border radius
              ),
              child: Container(
                padding: const EdgeInsets.all(
                    16.0), // Adjust the padding value as needed
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(img),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      heading,
                      style: const TextStyle(
                        fontSize: 20,
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      text,
                      style: const TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String rating;
  final String heading;
  final String text;
  final String img;
  final String name;
  final String designation;

  const ReviewCard(
      {super.key,
      required this.rating,
      required this.heading,
      required this.text,
      required this.img,
      required this.name,
      required this.designation});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(
          minWidth: 100.0, // Minimum width of the container
          maxWidth: 300.0, // Maximum width of the container
        ), // Fixed height for the card
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(8.0), // Optional: Adds rounded corners
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    text,
                    style: const TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14.00,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/Energy1.png'),
                  backgroundColor: Colors
                      .blue, // Adjust the radius to control the size of the avatar
                  child: Text(
                    'AB', // Text to display in the avatar
                    style: TextStyle(fontSize: 10.0, color: Colors.white),
                  ), // Background color of the avatar
                ),
                const SizedBox(width: 16.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 1.0),
                    Text(
                      designation,
                      style: const TextStyle(
                        color: AppColors.textColor,
                        fontSize: 12.00,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}

class HeadingWidget extends StatelessWidget {
  final String heading;
  final String desc;
  const HeadingWidget({super.key, required this.heading, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          heading,
          textAlign: TextAlign.center,
          style: AppHeadings.heading2(context),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
      ],
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
