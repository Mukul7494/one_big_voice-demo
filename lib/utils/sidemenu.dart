import 'package:flutter/material.dart';

import 'about.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/images/obv.png'),
          ),
          const ListTile(
            title: Text('OBV23 INFO'),
          ),
          const ListTile(
            title: Text('Music Store'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutOBV(),
                ),
              );
            },
            title: const Text('About OBV'),
          ),
          const ListTile(
            title: Text('Merchandise'),
          ),
          const ListTile(
            title: Text('Sponsors'),
          ),
        ],
      ),
    );
  }
}
