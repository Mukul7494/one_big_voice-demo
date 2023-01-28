// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BannerConatiner extends StatelessWidget {
  final String bannerNo;
  double marginVert;
  double marginHori;
  BannerConatiner({
    Key? key,
    required this.bannerNo,
    this.marginVert = 40,
    this.marginHori = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: marginHori, vertical: marginVert),
      height: size.height * 0.25,
      width: size.width,
      color: Colors.black,
      child: Image.asset(
        'assets/images/obv_banner$bannerNo.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
