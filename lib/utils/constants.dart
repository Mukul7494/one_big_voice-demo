import 'package:flutter/material.dart';

const violet = Color(0xFF871abd);

const pink = Color(0xFFf8527c);

const violetContainerColor = Color(0xFF871abd);

const textStyle = TextStyle();

Widget bottomContainerPinkFontsTextStyle(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 6.0),
    child: Text(
      text,
      textScaleFactor: 1.4,
      style: const TextStyle(color: pink, fontWeight: FontWeight.w700),
    ),
  );
}

Widget bottomContainerWhiteFontsTextStyle(String text) {
  return Text(
    text,
    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
  );
}
