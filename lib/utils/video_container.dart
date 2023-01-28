// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class VideoContainer extends StatelessWidget {
  final Widget child;
  double marginHori;
  VideoContainer({
    Key? key,
    required this.child,
    this.marginHori = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: marginHori, vertical: 20),
      height: size.height * 0.25,
      width: size.width,
      color: Colors.black,
      child: child,
    );
  }
}
