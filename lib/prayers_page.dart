import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:christ_ful/prayer_card.dart'; // Replace 'your_project_name' with your actual project name

class PrayersPage extends StatelessWidget {
  const PrayersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Today's Prayers"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            // Stacked layout for small screens
            return Column(
              children: [
                PrayerCard(
                  imageUrl: 'https://example.com/image1.jpg', // Replace with your actual image URL
                  text: 'Prayer #1',
                ),
                PrayerCard(
                  imageUrl: 'https://example.com/image2.jpg', // Replace with your actual image URL
                  text: 'Prayer #2',
                ),
                PrayerCard(
                  imageUrl: 'https://example.com/image3.jpg', // Replace with your actual image URL
                  text: 'Prayer #3',
                ),
              ],
            );
          } else {
            // Row layout for larger screens
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PrayerCard(
                    imageUrl: 'https://example.com/image1.jpg', // Replace with your actual image URL
                    text: 'Prayer #1',
                  ),
                ),
                Expanded(
                  child: PrayerCard(
                    imageUrl: 'https://example.com/image2.jpg', // Replace with your actual image URL
                    text: 'Prayer #2',
                  ),
                ),
                Expanded(
                  child: PrayerCard(
                    imageUrl: 'https://example.com/image3.jpg', // Replace with your actual image URL
                    text: 'Prayer #3',
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
