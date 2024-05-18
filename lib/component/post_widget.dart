import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

  // List exemple pour les posts :
  final List postItems = [
    {
      "pseudo": 'Fleur_inspi',
      "photo": "assets/images/fleur.jpeg",
      "post": "assets/images/post_fleur.jpg",
    },
    {
      "pseudo": 'KevinCOD',
      "photo": "assets/images/kevin.jpeg",
      "post": "assets/images/post_kevin.jpg",
    },
    {
      "pseudo": 'marc.doe',
      "photo": "assets/images/marc.jpeg",
      "post": "assets/images/post_marc.jpg",
    },
    {
      "pseudo": 'Just_marie',
      "photo": "assets/images/marie.jpeg",
      "post": "assets/images/post_marie.jpg",
    },
    {
      "pseudo": 'RandoLover',
      "photo": "assets/images/nature.jpeg",
      "post": "assets/images/post_nature.jpg",
    },
    {
      "pseudo": 'Oscar',
      "photo": "assets/images/oscar.jpeg",
      "post": "assets/images/post_oscar.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    backgroundImage: AssetImage(post['photo']),
                  ),
                ),
                Text(post['pseudo']),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  // Texte d'info-bulle
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('button to get info user.')));
                  },
                ),
              ],
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(post['post']), fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite),
                  // Texte d'info-bulle
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('button to add like.')));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.mode_comment),
                  // Texte d'info-bulle
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('button to add comment.')));
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  // Texte d'info-bulle
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('button to send.')));
                  },
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.bookmark),
                  // Texte d'info-bulle
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('button to save post.')));
                  },
                ),
              ],
            ),
          ],
        );
      }).toList(),
    );
  }
}
