import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../lyrics.dart';
import '../music_class.dart';

final musicDataProvider = Provider<List<MusicList>>((ref) {
  return [
    MusicList(
      audioUrl:
          "https://cdn.trendybeatz.com/audio/Lucky-Dube-Remember-Me-[TrendyBeatz.com].mp3",
      album: " Prisoner Album ",
      title: "Remember Me",
      artist: " Lucky Dube",
      id: '0',
      artUri:
          "https://trendybeatz.com/images/Lucky-Dube-Prisoner-Album-Art.jpg",
      displaySubtitle: lyrics["Remember me"],
    ),
    //Beleiver
    MusicList(
      audioUrl: "https://pagaliworld.com/files/download/id/13363",
      album: "Album 2",
      title: "Believer",
      artist: "Imagine Dragons",
      id: '1',
      displaySubtitle: lyrics["Believer"],
      artUri: "https://pagaliworld.com/siteuploads/thumb/sft27/13363_4.jpg",
    ),
    //  Because He Lives
    MusicList(
      audioUrl:
          "https://files.gospeljingle.com/uploads/music3/2021/10/Matt_Maher_-_Because_He_Lives_Amen_.mp3",
      album: "track",
      title: "Because He Lives (Amen)",
      artist: "Matt Maher",
      id: '2',
      displaySubtitle: lyrics["Because He"],
      artUri:
          "https://i.scdn.co/image/ab67616d0000b273f9d98e04c9ea0f20901b135c",
    ),
    // you raise me up
    MusicList(
      audioUrl: "assets/audio/You Raise Me Up.mp3",
      album: "track",
      title: "You raise me up",
      artist: "Westlife",
      id: '3',
      displaySubtitle: lyrics["You raise me up"],
      artUri:
          "https://loadedsongs.com/wp-content/uploads/2022/07/You-Raise-Me-Up-Stand-On-Mountains.jpg",
    ),

    //memories
    MusicList(
      audioUrl:
          "https://cdn.trendybeatz.com/audio/Maroon-5-Memories-(TrendyBeatz.com).mp3",
      album: "track",
      title: "Memories",
      artist: "Maroon 5",
      id: '4',
      artUri: "https://trendybeatz.com/images/Maroon-5-Memories-Artwork.jpg",
      displaySubtitle: lyrics["Memories"],
    ),

    // Lovely
    MusicList(
      audioUrl: "https://pagaliworld.com/files/download/id/3260",
      album: "track",
      title: "Lovely ",
      artist: "Billie Eilish, Khalid",
      id: '5',
      displaySubtitle: lyrics["Lovely"],
      artUri: "https://pagaliworld.com/siteuploads/thumb/sft7/3260_4.jpg",
    ),

    //better when i am dancing
    MusicList(
      audioUrl: "https://pagolworld.nl/files/download/id/5321",
      album: "track",
      title: "Better When I M Dancin",
      artist: "Meghan Trainor",
      id: '6',
      displaySubtitle: lyrics["Better When"],
      artUri: "https://pagolworld.nl/siteuploads/thumb/sft11/5321_6.jpg",
    ),

    MusicList(
        title: "Linkin Park One More",
        artist: "Linking Park",
        album: "track",
        id: "7",
        artUri:
            "https://pbs.twimg.com/media/DDgjCjtU0AAwyAF?format=jpg&name=4096x4096",
        displaySubtitle: lyrics["One More Light"],
        audioUrl: "assets/audio/Linkin Park One More HQ.mp3"),
  ];
});
