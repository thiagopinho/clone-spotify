import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String image;
  const CardCategory({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 140, 110, 146),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Pop',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Transform(
            transform: Matrix4.rotationZ(0.4),
            child: Image.network(
              image,
              height: 70,
            ),
          ),
        ],
      ),
    );
  }
}
