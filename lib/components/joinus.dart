import 'package:flutter/material.dart';
import 'package:wise_meal/components/custom_elements.dart';
import 'package:wise_meal/utils/colors.dart';

class JoinusWidget extends StatefulWidget {
  const JoinusWidget({super.key});

  @override
  State<JoinusWidget> createState() => _JoinusWidgetState();
}

class _JoinusWidgetState extends State<JoinusWidget> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double containerWidth =
        screenWidth > 600 ? screenWidth * 0.6 : screenWidth * 0.9;
    return Center(
      child: Container(
        width: containerWidth,
        height: 500,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Join our fans for exclusive deals and tips!'),
            const SizedBox(height: 16), // Add spacing between the text and row
            Row(
              children: [
                const Expanded(
                  child: FilledTextFieldExample(),
                ),
                const SizedBox(
                    width: 8), // Add spacing between text field and button
                PrimaryButtonWidget(
                  text: 'Subscribe',
                  onPressed: () => {print('Subscribed')},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FilledTextFieldExample extends StatelessWidget {
  const FilledTextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email_outlined,
          color: Colors.white, // Color for the outlined icon
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey), // Gray border color
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.grey), // Gray border color when enabled
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.grey), // Gray border color when focused
        ),
        fillColor: AppColors
            .textFieldColor, // Permanent background color of the TextField
        filled: true,
        hintText: 'Join us',
        hintStyle: TextStyle(color: Colors.white), // Hint text color
      ),
    );
  }
}
