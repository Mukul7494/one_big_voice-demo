import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:one_big_voice/player/media_metadata.dart';
import 'package:one_big_voice/player/provider/music_list.dart';
import 'package:one_big_voice/player/player_controls.dart';
import 'package:one_big_voice/player/position_data.dart';
import 'package:rxdart/rxdart.dart';

class PlayerPage extends ConsumerStatefulWidget {
  const PlayerPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlayerPageState();
}

class _PlayerPageState extends ConsumerState<PlayerPage> {
  late AudioPlayer _audioPlayer;

  final BoxDecoration decoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.pink,
        Colors.purple,
      ],
    ),
  );
  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _audioPlayer.positionStream,
        _audioPlayer.bufferedPositionStream,
        _audioPlayer.durationStream,
        (position, bufferedPosition, duration) => PositionData(
            position: position,
            bufferedPosition: bufferedPosition,
            duration: duration ?? Duration.zero),
      );

  Future<void> _init() async {
    final ProviderContainer ref = ProviderContainer();
    final playList = ref.read(playListProvider);
    await _audioPlayer.setAudioSource(playList);

    await _audioPlayer.setLoopMode(LoopMode.all);
  }

  /// this method is called when the widget is inserted into the widget tree
  @override
  void initState() {
    super.initState();
    // .. accessing objects and it's properties at same time
    _audioPlayer = AudioPlayer();
    _init();
  }

// this methos is called when the widget is removed from the widget tree
  @override
  void dispose() {
    super.dispose();

    //removing it for now because when tab is change it stopps the music

    _audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: decoration,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<SequenceState?>(
                stream: _audioPlayer.sequenceStateStream,
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  if (state?.sequence.isEmpty ?? true) {
                    return const SizedBox();
                  }
                  final metadata = state!.currentSource!.tag as MediaItem;
                  return MediaMetaData(
                    imgUrl: metadata.artUri.toString(),
                    title: metadata.title,
                    artist: metadata.artist ?? "",
                    lyrics: metadata.displaySubtitle ?? "",
                  );
                },
              ),
              const SizedBox(height: 20),
              StreamBuilder<PositionData>(
                stream: _positionDataStream,
                // initialData: initialData,
                builder: (context, snapshot) {
                  final PositionData positionData = snapshot.data ??
                      PositionData(
                        position: Duration.zero,
                        bufferedPosition: Duration.zero,
                        duration: Duration.zero,
                      );
                  return ProgressBar(
                    //style is here
                    barHeight: 8,
                    baseBarColor: Colors.white.withOpacity(0.32),
                    thumbColor: Colors.white,
                    thumbRadius: 8,
                    progressBarColor: Colors.amber,
                    bufferedBarColor: Colors.white.withOpacity(0.24),
                    timeLabelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    //style ends here

                    //except style the logic is here
                    progress: positionData.position,
                    buffered: positionData.bufferedPosition,
                    total: positionData.duration,
                    onSeek: _audioPlayer.seek,
                  );
                },
              ),
              const SizedBox(height: 5),
              PlayerControlles(audioPlayer: _audioPlayer)
            ],
          ),
        ),
      ),
    );
  }
}
