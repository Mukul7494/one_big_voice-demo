import 'package:flutter/material.dart';

class GreyText extends StatelessWidget {
  final String text;
  const GreyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
        bottom: 20,
      ),
      child: Text(
        text,
        textScaleFactor: 1.3,
        style: const TextStyle(color: Color(0xFF727576)),
      ),
    );
  }
}
