import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key});

  // List exemple pour la story :
  final List storyItems = [
    {
      "pseudo": 'Fleur_inspi',
      "photo": "assets/images/fleur.jpeg",
    },
    {
      "pseudo": 'KevinCOD',
      "photo": "assets/images/kevin.jpeg",
    },
    {
      "pseudo": 'marc.doe',
      "photo": "assets/images/marc.jpeg",
    },
    {
      "pseudo": 'Just_marie',
      "photo": "assets/images/marie.jpeg",
    },
    {
      "pseudo": 'RandoLover',
      "photo": "assets/images/nature.jpeg",
    },
    {
      "pseudo": 'Oscar',
      "photo": "assets/images/oscar.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // Parcourir la List storyItems : storyItems.map((story)
        children: storyItems.map((story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  backgroundImage: AssetImage(story['photo']),
                ),
                Text(story['pseudo']),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
