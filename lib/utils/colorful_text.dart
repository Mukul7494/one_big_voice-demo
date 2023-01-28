// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorfulText extends StatelessWidget {
  final String text;
  final Color color;
  double paddingVert = 20;
  double paddinghori = 30;
  ColorfulText({
    Key? key,
    required this.text,
    required this.color,
    this.paddingVert = 20,
    this.paddinghori = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: paddinghori, vertical: paddingVert),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style:
            TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: color),
      ),
    );
  }
}
