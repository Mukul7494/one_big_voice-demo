import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MediaMetaData extends ConsumerWidget {
  const MediaMetaData(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.artist,
      required this.lyrics});

  final String imgUrl;
  final String title;
  final String artist;
  final String? lyrics;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        //music details
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          artist,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),

        //music image
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 4,
                offset: const Offset(0, 5),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        (lyrics != null && lyrics!.isNotEmpty)
            ? TextButton(
                onPressed: () => context.push("/LyricsPage?lyrics=$lyrics"),
                child: Text(
                  "${lyrics!.substring(0, 50)}...",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              )

            //  Text("${lyrics!.substring(0, 50)}...",
            //     style: const TextStyle(
            //       color: Colors.white,
            //       fontSize: 16,
            //       fontWeight: FontWeight.w500,
            //     ),
            //     textAlign: TextAlign.center)

            : const Text("No lyrics found"),
      ],
    );
  }
}
