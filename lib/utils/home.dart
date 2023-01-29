import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:one_big_voice/utils/banner_container.dart';
import 'package:one_big_voice/utils/bottom_violet_container.dart';
import 'package:one_big_voice/utils/circle_avatar.dart';
import 'package:one_big_voice/utils/colorful_text.dart';
import 'package:one_big_voice/utils/custom_elevated_button.dart';
import 'package:one_big_voice/utils/grey_text.dart';
import 'package:one_big_voice/utils/line_container.dart';
import 'package:one_big_voice/utils/violet_container.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'black_bottom_container.dart';
import 'constants.dart';
import 'video_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: SpeedDial(
        backgroundColor: const Color.fromARGB(255, 129, 93, 238),
        children: [
          SpeedDialChild(
            child: const Icon(Icons.facebook),
            label: 'Facebook',
            onTap: () async {
              const url =
                  'https://www.facebook.com/sharer/sharer.php?u=https://onebigvoice.com.au/information/public/song-list/';
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'Could not launch';
              }
            },
          ),
          SpeedDialChild(
            child: const Icon(PhosphorIcons.twitterLogo),
            label: 'Twitter',
            onTap: () async {
              const url =
                  'https://twitter.com/share?text=Song+List&url=https://onebigvoice.com.au/information/public/song-list/';
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'Could not launch';
              }
            },
          ),
          SpeedDialChild(
            child: const Icon(PhosphorIcons.youtubeLogo),
            label: 'Youtube',
            onTap: () async {
              const url = 'https://www.facebook.com/onebigvoicewa/';
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'Could not launch';
              }
            },
          ),
        ],
        child: const Icon(Icons.chat),
      ),
      body: ListView(
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width,
            color: Colors.black,
            child: Image.network(
              "https://onebigvoice.com.au/wp-content/uploads/2018/01/DSC0809-MOD.jpg",
              height: size.height * 0.3,
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),
          ColorfulText(
              text: 'Registrations For OBV 2023 Open January.', color: violet),
          const VideoContainer(ytId: 'BLTBB9WoGRA'),
          ColorfulText(
              text: 'Click on our OBV23 logo to visit the INFO page...',
              color: pink),
          BannerConatiner(bannerNo: '1'),
          const LineConatiner(),
          BannerConatiner(bannerNo: '2'),
          const LineConatiner(),
          ColorfulText(
            text:
                'Photos from previous years are accesible at onebigvoice.photos. \n Full details HERE.',
            color: violet,
          ),
          const LineConatiner(),
          BannerConatiner(
            bannerNo: '3',
            marginVert: 40,
          ),
          ColorfulText(
            paddingVert: 0,
            text:
                'The OBV community made up for the disappointment of missing out in 2020 by taking it to a whole new level in ’21!',
            color: violet,
          ),
          const SizedBox(height: 20),
          const VideoContainer(ytId: 'cEJJoPsYwOg'),
          const SizedBox(height: 20),
          const LineConatiner(),
          const CustomeElevatedButton(),
          ColorfulText(
              text:
                  'Our Mission: To have as many young people as possible singing positive, uplifting, life affirming songs.',
              color: violet),
          const GreyText(
              text:
                  'One Big Voice is Australia’s largest children’s choir. Open to all schools, public or private (Years 3-7), OBV culminates annually in 2 massive concerts at RAC Arena in Perth, Western Australia. Over 7000 students and their families celebrate in joyous affirmation of the life changing power of song.'),
          const CustomCircleAvatar(),
          const VioletContainer(),
          const VideoContainer(ytId: 'oxI5IB_6E8M'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColorfulText(
                paddinghori: 20,
                text: 'An experience of a lifetime!',
                color: violet,
              ),
              const GreyText(
                  text:
                      'The magic of thousands of children singing in harmony has to be experienced to be believed.'),
            ],
          ),
          const BlackBottomContainer(),
          const BottomVioletContainer(),
        ],
      ),
    );
  }
}
