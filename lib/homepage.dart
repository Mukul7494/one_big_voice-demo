import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:one_big_voice/utils/banner_container.dart';
import 'package:one_big_voice/utils/bottom_violet_container.dart';
import 'package:one_big_voice/utils/circle_avatar.dart';
import 'package:one_big_voice/utils/colorful_text.dart';
import 'package:one_big_voice/utils/constants.dart';
import 'package:one_big_voice/utils/custom_elevated_button.dart';
import 'package:one_big_voice/utils/grey_text.dart';
import 'package:one_big_voice/utils/line_container.dart';
import 'package:one_big_voice/utils/video_container.dart';
import 'package:one_big_voice/utils/violet_container.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'utils/black_bottom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'https://youtu.be/BLTBB9WoGRA',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Image.asset('assets/images/obv.png'),
        ),
        actions: [
          SizedBox(
            width: size.width * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xFFf9527d),
                  child: Icon(
                    Icons.music_note_outlined,
                    color: Colors.black,
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xFF01aeee),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: const Color.fromARGB(255, 129, 93, 238),
        children: [
          SpeedDialChild(
            child: const Icon(Icons.whatsapp),
            label: 'whatsApp',
            onTap: () {},
          ),
          SpeedDialChild(
            child: const Icon(Icons.email),
            label: 'email',
            onTap: () {},
          ),
          SpeedDialChild(
            child: const Icon(Icons.phone),
            label: 'phone',
            onTap: () {},
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
          ),
          ColorfulText(
              text: 'Registrations For OBV 2023 Open January.', color: violet),
          VideoContainer(
            child: const Center(
              child: Text(
                'put here a video',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
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
          VideoContainer(
            child: const Center(
              child: Text(
                'put here a video',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
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
          VideoContainer(
            marginHori: 20,
            child: const Center(
              child: Text('put a video here'),
            ),
          ),
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
