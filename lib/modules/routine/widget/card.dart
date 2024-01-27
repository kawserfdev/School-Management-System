import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  final Image icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Arial Rounded MT Bold',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
