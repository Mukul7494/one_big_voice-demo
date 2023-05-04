import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:one_big_voice/Authentication/pages/login_page.dart';
import 'package:one_big_voice/homepage.dart';
import 'package:one_big_voice/player/pages/lyrics_page.dart';
import 'package:one_big_voice/player/pages/player_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    errorBuilder: (context, state) => const Scaffold(
      body: Text("Page not Found"),
    ),
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/PlayerPage',
        builder: (context, state) => const PlayerPage(),
      ),
      GoRoute(
        path: '/HomePage',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/LyricsPage',
        builder: (context, state) => LyricsPage(
          lyrics: state.queryParameters['lyrics'] ?? '',
        ),
      ),
    ],
  );
});
