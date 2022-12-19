import 'package:flutter/material.dart';

class ArtistsCard extends StatelessWidget {
  const ArtistsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            bottom: 15.0,
            right: 20.0,
          ),
          child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.scdn.co/image/ab6761610000e5eb3ef779aa0d271adb2b6a3ded",
                ),
              )),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                'Childish Gambino',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              'Artist',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
