import 'package:flutter/material.dart';

class CustomeElevatedButton extends StatelessWidget {
  const CustomeElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(20.0),
      width: size.width * 0.8,
      height: size.height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFF9a51e1),
      ),
      child: const Center(
          child: Text(
        'DONATE to OneBigVoice',
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
