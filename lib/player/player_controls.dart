import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

class PlayerControlles extends ConsumerWidget {
  const PlayerControlles({super.key, required this.audioPlayer});

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          color: Colors.white,
          iconSize: 40,
          onPressed: audioPlayer.seekToPrevious,
          icon: const Icon(Icons.skip_previous_rounded),
        ),
        StreamBuilder<PlayerState>(
            stream: audioPlayer.playerStateStream,
            builder: (context, snapshot) {
              final playerState = snapshot.data;
              final processingState = playerState?.processingState;
              final playing = playerState?.playing;
              const double iconsize = 80;

              if (!(playing ?? false)) {
                return IconButton(
                  color: Colors.white,
                  iconSize: iconsize,
                  onPressed: () {
                    audioPlayer.play();
                  },
                  icon: const Icon(Icons.play_arrow_rounded),
                );
              } else if (processingState != ProcessingState.completed) {
                return IconButton(
                  iconSize: iconsize,
                  icon: const Icon(Icons.pause_rounded),
                  onPressed: audioPlayer.pause,
                );
              } else {
                return const Icon(
                  Icons.play_arrow_rounded,
                  size: iconsize,
                  color: Colors.white,
                );
              }
            }),
        IconButton(
          color: Colors.white,
          iconSize: 40,
          onPressed: audioPlayer.seekToNext,
          icon: const Icon(Icons.skip_next_rounded),
        ),
      ],
    );
  }
}
