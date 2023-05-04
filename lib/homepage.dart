import 'package:flutter/material.dart';
import 'package:one_big_voice/player/pages/player_page.dart';
import 'package:one_big_voice/utils/about.dart';
import 'package:one_big_voice/utils/constants.dart';
import 'package:one_big_voice/utils/home.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'utils/login.dart';
import 'utils/sidemenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      // const MusicView(),
      const AboutOBV(),
      const LoginView(),
      const PlayerPage()
    ];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Image.asset(
            'assets/images/obv.png',
            width: 100,
          ),
        ),
        actions: [
          SizedBox(
            width: size.width * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () async {
                    const url =
                        'https://www.instagram.com/onebigvoicefestival/?hl=en';
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      throw 'Could not launch';
                    }
                  },
                  child: const CircleAvatar(
                    backgroundColor: violet,
                    child: Icon(
                      PhosphorIcons.instagramLogo,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const url =
                        'https://www.youtube.com/channel/UCnPgPIEmcdF_XGLPOg0Y5PQ/featured';
                    if (await canLaunchUrlString(url)) {
                      await launchUrlString(url);
                    } else {
                      throw 'Could not launch';
                    }
                  },
                  child: const CircleAvatar(
                    backgroundColor: violet,
                    child: Icon(
                      PhosphorIcons.youtubeLogo,
                      color: Colors.white,
                    ),
                  ),
                ),
                Builder(builder: (context) {
                  return IconButton(
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 40,
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
      endDrawer: const SideMenu(),
      body: TabBarView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: _buildScreens(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _controller.index,
        onTap: (index) {
          setState(() {
            _controller.index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.music_note),
          //   label: 'Music',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_video_rounded),
            label: 'Player',
          ),
        ],
        selectedItemColor: violet,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
