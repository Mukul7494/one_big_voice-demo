import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one_big_voice/utils/constants.dart';

import '../player/provider/music_data.dart';

class MusicView extends ConsumerStatefulWidget {
  const MusicView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MusicViewState();
}

class _MusicViewState extends ConsumerState<MusicView> {
  bool isPlaying = false;
  int? indexPlaying;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final musicList = ref.read(musicDataProvider);
    return Scaffold(
      body: ListView(
        children: musicList.map(
          (e) {
            final index = musicList.indexOf(e);
            final song = e.title;
            final artist = e.artist;
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
