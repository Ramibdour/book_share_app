import 'package:flutter/material.dart';

class TextDiscover extends StatelessWidget {
  final String text;
  final int colorText;
  const TextDiscover({
    Key? key,
    required this.text,
    required this.colorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: 'SF',
          color: Color(colorText),
        ),
      ),
    );
  }
}
