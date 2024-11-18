import 'package:flutter/material.dart';
import 'package:wise_meal/components/custom_elements.dart';
import 'package:wise_meal/utils/colors.dart';

class Review {
  final String rating;
  final String heading;
  final String text;
  final String img;
  final String name;
  final String designation;

  Review(
      {required this.rating,
      required this.heading,
      required this.text,
      required this.img,
      required this.name,
      required this.designation});
}

class TestmonialsWidget extends StatefulWidget {
  const TestmonialsWidget({super.key});

  @override
  State<TestmonialsWidget> createState() => _TestmonialsWidgetState();
}

class _TestmonialsWidgetState extends State<TestmonialsWidget> {
  final List<Review> Reviews = [
    Review(
        rating: 'assets/images/Energy1.png',
        heading:
            'Ļoti patīk gan gan ideja, gan saturs, gan vizuālais noformējums! Visnotaļ,',
        text: 'Lāsīt vairāk',
        img: 'assets/images/Energy1.png',
        name: 'arbaz',
        designation: 'pirms 8 mēnešiem'),
    Review(
        rating: 'assets/images/Energy2.png',
        heading:
            'Ļoti patīk gan gan ideja, gan saturs, gan vizuālais noformējums! Visnotaļ,',
        text: 'Lāsīt vairāk',
        img: 'assets/images/Energy1.png',
        name: 'arbaz',
        designation: 'pirms 8 mēnešiem'),
    Review(
        rating: 'assets/images/Energy3.png',
        heading:
            'Ļoti patīk gan gan ideja, gan saturs, gan vizuālais noformējums! Visnotaļ,',
        text: 'Lāsīt vairāk',
        img: 'assets/images/Energy1.png',
        name: 'arbaz',
        designation: 'pirms 8 mēnešiem'),
    Review(
        rating: 'assets/images/Energy1.png',
        heading:
            'Ļoti patīk gan gan ideja, gan saturs, gan vizuālais noformējums! Visnotaļ,',
        text: 'Lāsīt vairāk',
        img: 'assets/images/Energy1.png',
        name: 'arbaz',
        designation: 'pirms 8 mēnešiem'),
    Review(
        rating: 'assets/images/Energy2.png',
        heading:
            'Ļoti patīk gan gan ideja, gan saturs, gan vizuālais noformējums! Visnotaļ,',
        text: 'Lāsīt vairāk',
        img: 'assets/images/Energy1.png',
        name: 'arbaz',
        designation: 'pirms 8 mēnešiem'),
    Review(
        rating: 'assets/images/Energy3.png',
        heading:
            'Ļoti patīk gan gan ideja, gan saturs, gan vizuālais noformējums! Visnotaļ,',
        text: 'Lāsīt vairāk',
        img: 'assets/images/Energy1.png',
        name: 'arbaz',
        designation: 'pirms 8 mēnešiem'),
    Review(
        rating: 'assets/images/Energy1.png',
        heading:
            'Ļoti patīk gan gan ideja, gan saturs, gan vizuālais noformējums! Visnotaļ,',
        text: 'Lāsīt vairāk',
        img: 'assets/images/Energy1.png',
        name: 'arbaz',
        designation: 'pirms 8 mēnešiem'),
    Review(
        rating: 'assets/images/Energy2.png',
        heading:
            'Ļoti patīk gan gan ideja, gan saturs, gan vizuālais noformējums! Visnotaļ,',
        text: 'Lāsīt vairāk',
        img: 'assets/images/Energy1.png',
        name: 'arbaz',
        designation: 'pirms 8 mēnešiem'),
    Review(
        rating: 'assets/images/Energy3.png',
        heading:
            'Ļoti patīk gan gan ideja, gan saturs, gan vizuālais noformējums! Visnotaļ,',
        text: 'Lāsīt vairāk',
        img: 'assets/images/Energy1.png',
        name: 'arbaz',
        designation: 'pirms 8 mēnešiem'),
  ];

  @override
  Widget build(BuildContext context) {
    // Determine the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // Set padding based on screen width
    final paddingValue = screenWidth > 600 ? 140.0 : 10.0;

    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: Column(
        children: [
          Text(
            'Kāds ir WISE meal noslēpums?',
            textAlign: TextAlign.center,
            style: AppHeadings.heading2(context),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'Corem ipsum dolor sit amet, consectetur adipiscing elit.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Wrap(
              spacing: 8.0, // Horizontal gap between adjacent items
              runSpacing: 4.0, // Vertical gap between lines
              children: Reviews.map((review) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ReviewCard(
                    rating: review.rating,
                    heading: review.heading,
                    text: review.text,
                    img: review.img,
                    name: review.name,
                    designation: review.designation,
                  ),
                );
              }).toList()),
        ],
      ),
    );
  }
}
