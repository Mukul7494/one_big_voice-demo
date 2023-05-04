import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';

import 'music_data.dart';

final playListProvider = Provider((ref) {
  final musicList = ref.watch(musicDataProvider);
  return ConcatenatingAudioSource(
    children: [
      for (final music in musicList)
        //if the audio is an asset or offline
        (music.audioUrl.contains("assets/"))
            ? AudioSource.asset(
                music.audioUrl,
                tag: MediaItem(
                  album: music.album,
                  title: music.title,
                  artist: music.artist,
                  id: music.id,
                  artUri: Uri.parse(music.artUri),
                  displaySubtitle: music.displaySubtitle,
                ),
              )
            :
            //for online music Streaming
            AudioSource.uri(
                Uri.parse(music.audioUrl),
                tag: MediaItem(
                  album: music.album,
                  title: music.title,
                  artist: music.artist,
                  id: music.id,
                  artUri: Uri.parse(music.artUri),
                  displaySubtitle: music.displaySubtitle,
                ),
              ),
      //Remember me
    ],
  );
});
