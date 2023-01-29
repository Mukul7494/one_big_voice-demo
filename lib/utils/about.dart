import 'package:flutter/material.dart';

class AboutOBV extends StatelessWidget {
  const AboutOBV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About OBV'),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFf9527d),
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          'As Australia’s largest and most inclusive children’s choir, OneBigVoice shows what the power of song and of a simple idea can achieve!\n\nOur mission statement, To have as many young people as possible singing, positive, uplifting, life-affirming songs seems to have worked like a magic spell to turn a modest gathering of 6 local schools in 2001 into a community phenomenon.\n\nThis now sees close to 20,000 people gather at RAC Arena in Perth, Western Australia on one day each year, for a massive celebration of the song which has the welfare of children at its very heart. In reality, it is an untiring army of inspirational teachers, volunteers and other helpers and supporters who make the magic happen.\n\nHow is it done? How did it come to be?\n\nExplore the menu above to find out all About Us!',
          textScaleFactor: 1.3,
        ),
      ),
    );
  }
}
