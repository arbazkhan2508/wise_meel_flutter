import 'package:flutter/material.dart';
import 'package:wise_meal/utils/colors.dart';

class HoverTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const HoverTextButton({super.key, required this.text, required this.onPressed});

  @override
  _HoverTextButtonState createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _onHover(true),
      onExit: (event) => _onHover(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: _isHovered ? Colors.black : Colors.transparent,
                width: 2.0,
              ),
            ),
          ),
          child: Text(
            widget.text,
            style: const TextStyle(color: AppColors.linksColor, fontSize: 15),
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
