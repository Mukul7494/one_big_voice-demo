import 'package:flutter/material.dart';

import 'constants.dart';

class VioletContainer extends StatelessWidget {
  const VioletContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      width: size.width,
      height: size.height * 0.25,
      color: violetContainerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'An unforgettable experience of a lifetime',
            textScaleFactor: 1.5,
            style: TextStyle(
                color: Color(0xFFfb87a5), fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12.0),
          Text(
            'Students participate in a non-competitive massed choir, building musical confidence in teachers and bringing the pure joy of singing and music to their students. The magic of thousands of children singing in harmony must be experienced to be believed.',
            textScaleFactor: 1.3,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
