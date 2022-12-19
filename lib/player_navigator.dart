import 'package:flutter/material.dart';

class PlayerNavigator extends StatefulWidget {
  const PlayerNavigator({super.key});

  @override
  State<PlayerNavigator> createState() => _PlayerNavigatorState();
}

class _PlayerNavigatorState extends State<PlayerNavigator> {
  late bool isPlaying = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 5, 31, 53),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network(
                  "https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452",
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Easy ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "Troye Sivan",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  isPlaying
                      ? 'Escutando'.toUpperCase()
                      : 'Pausado'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    isPlaying = !isPlaying;
                  });
                },
                icon: isPlaying
                    ? const Icon(
                        Icons.pause,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ))
          ],
        ),
      ),
    );
  }
}
