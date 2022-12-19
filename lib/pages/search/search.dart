import 'package:cloneofspotify/pages/search/categories.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Search',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            TextFormField(
              cursorColor: Colors.black,
              style: const TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                hintText: 'Artists, songs, or podcasts',
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const Text(
              'Your top genres',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Categories(),
            const Text(
              'Popular podcast categories',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Categories(),
          ],
        ),
      ),
    );
  }
}
