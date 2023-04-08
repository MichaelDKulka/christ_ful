import 'package:flutter/material.dart';

class PrayerCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  const PrayerCard({Key? key, required this.imageUrl, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
