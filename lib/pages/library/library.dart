import 'package:cloneofspotify/pages/library/components/artists.dart';
import 'package:cloneofspotify/pages/library/components/filter.dart';
import 'package:cloneofspotify/pages/library/components/header.dart';
import 'package:cloneofspotify/pages/library/components/playlists.dart';
import 'package:flutter/material.dart';

class YourLibrary extends StatefulWidget {
  const YourLibrary({super.key});

  @override
  State<YourLibrary> createState() => _YourLibraryState();
}

class _YourLibraryState extends State<YourLibrary> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: const [
            Header(),
            Filter(),
            CardPlaylist(),
            ArtistsCard(),
          ],
        ),
      ),
    );
  }
}
