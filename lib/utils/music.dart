import 'package:flutter/material.dart';
import 'package:one_big_voice/utils/constants.dart';

class MusicView extends StatefulWidget {
  const MusicView({Key? key}) : super(key: key);

  static final list = [
    "One Big Voice 21 – Donna Marwick-O’Brien (reimagined and in 3 parts for 2021)",
    "Our Jigsaw Family – Nathan Cahill (specially written for OBV)",
    "Real Big Kids – Brendan O’Brien (we are confronting bullying head on!)",
    "Storming – Donna Marwick-O’Brien, Kiki McCormack, Brendan O’Brien (including our spectacular body percussion feature)",
    "I Was Born – Hanson",
    "Mary of York – Donna Marwick-O’Brien (Western Australian history)",
    "Moondyne Joe – Jennifer Gaunt We’ve got your HaSS covered!",
    "Somebody’s Child – Donna Marwick-O’Brien",
    "From Now On – Benj Pasek, Justin Paul (students and teachers sing together)",
    "Love Is In the Air – John Paul Young (Karaoke)",
    "Unstoppable – Sia Furler, Chris Braide",
  ];

  @override
  State<MusicView> createState() => _MusicViewState();
}

class _MusicViewState extends State<MusicView> with TickerProviderStateMixin {
  bool isPlaying = false;
  int? indexPlaying;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: MusicView.list.map(
          (e) {
            final index = MusicView.list.indexOf(e);
            final song = e.split(' – ')[0];
            final artist = e.split(' – ')[1];
            return Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ListTile(
                title: Text(
                  song,
                  textScaleFactor: 1.2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: violet,
                  ),
                ),
                subtitle: Text(
                  artist,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      isPlaying = !isPlaying;
                      if (isPlaying) {
                        indexPlaying = index;
                      } else {
                        indexPlaying = null;
                      }
                    });

                    /// show toast
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          isPlaying ? 'Playing $song' : 'Paused $song',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: isPlaying ? violet : pink,
                      ),
                    );
                  },
                  color: indexPlaying == index ? violet : pink,
                  icon: indexPlaying == index
                      ? const Icon(Icons.pause)
                      : const Icon(Icons.play_arrow),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
