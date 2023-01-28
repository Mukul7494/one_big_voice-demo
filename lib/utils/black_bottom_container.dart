import 'package:flutter/material.dart';
import 'package:one_big_voice/utils/constants.dart';

class BlackBottomContainer extends StatelessWidget {
  const BlackBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 16.0),
      height: size.height * 0.7,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/obv.png',
            height: size.height * 0.1,
            width: size.width * 0.2,
          ),
          bottomContainerPinkFontsTextStyle('ABOUT US'),
          bottomContainerWhiteFontsTextStyle('Our History'),
          bottomContainerWhiteFontsTextStyle('Our Team'),
          bottomContainerWhiteFontsTextStyle('2021 REPERTOIRE'),
          bottomContainerWhiteFontsTextStyle('Testimonials'),
          bottomContainerWhiteFontsTextStyle('Sponsors'),
          bottomContainerWhiteFontsTextStyle('FAQs'),
          bottomContainerWhiteFontsTextStyle('2021 Official Photos'),
          bottomContainerPinkFontsTextStyle('TEACHERS'),
          bottomContainerWhiteFontsTextStyle('Documents, Notes & Updates'),
          bottomContainerWhiteFontsTextStyle('Music'),
          bottomContainerWhiteFontsTextStyle('Choreography'),
          bottomContainerWhiteFontsTextStyle('Conductors'),
          bottomContainerWhiteFontsTextStyle('Soloists & Vocals Groups'),
          bottomContainerPinkFontsTextStyle('WORKING TOGETHER SONG'),
          bottomContainerWhiteFontsTextStyle('Song List'),
          bottomContainerWhiteFontsTextStyle('Dates & Documents'),
          bottomContainerWhiteFontsTextStyle('OBV23 Registration Page'),
          bottomContainerWhiteFontsTextStyle('Conductors'),
          bottomContainerPinkFontsTextStyle('STUDENTS'),
          bottomContainerWhiteFontsTextStyle('Soloists & comperes'),
          bottomContainerPinkFontsTextStyle('CONTACT'),
        ],
      ),
    );
  }
}
