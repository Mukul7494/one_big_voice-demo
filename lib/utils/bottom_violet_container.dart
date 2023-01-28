import 'package:flutter/material.dart';
import 'package:one_big_voice/utils/constants.dart';

class BottomVioletContainer extends StatelessWidget {
  const BottomVioletContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 16.0),
      height: size.height * 0.08,
      width: size.width,
      color: violet,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '© Copyright 2023, One Big Voice',
            style: textStyle,
          ),
          Text(
            'Design & Developement by Slick Design',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

const textStyle = TextStyle(color: Colors.white);
