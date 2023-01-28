import 'package:flutter/material.dart';

class LineConatiner extends StatelessWidget {
  const LineConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: size.width,
      height: 5,
      color: const Color(0xFF8a1db8),
    );
  }
}
