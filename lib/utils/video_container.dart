import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe_plus/youtube_player_iframe_plus.dart';

class VideoContainer extends ConsumerWidget {
  final String ytId;
  const VideoContainer({
    Key? key,
    required this.ytId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot = ref.watch(videoPlayerProvider(ytId));
    return snapshot.when(
      data: (data) => data,
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => const SizedBox.shrink(),
    );
  }
}

final videoPlayerProvider =
    FutureProvider.family<Widget, String>((ref, ytId) async {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: YoutubePlayerIFramePlus(
      controller: YoutubePlayerController(
        initialVideoId: ytId,
      ),
      aspectRatio: 16 / 9,
    ),
  );
});
