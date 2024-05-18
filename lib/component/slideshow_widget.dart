import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class SlideshowWidget extends StatelessWidget {
  SlideshowWidget({super.key});

  // List exemple pour la slideshow :
  final List slideshowItems = [
    {
      "pseudo": 'Fleur_inspi',
      "picture": "assets/images/fleur.jpeg",
      "post": "assets/images/post_fleur.jpg",
      "description":
          "Sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },
    {
      "pseudo": 'KevinCOD',
      "picture": "assets/images/kevin.jpeg",
      "post": "assets/images/post_kevin.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },
    {
      "pseudo": 'marc.doe',
      "picture": "assets/images/marc.jpeg",
      "post": "assets/images/post_marc.jpg",
      "description": "Lorem ipsum  🤣."
    },
    {
      "pseudo": 'Just_marie',
      "picture": "assets/images/marie.jpeg",
      "post": "assets/images/post_marie.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },
    {
      "pseudo": 'RandoLover',
      "picture": "assets/images/nature.jpeg",
      "post": "assets/images/post_nature.jpg",
      "description":
          "Lorem ipsum dolor sit amet, et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    },
    {
      "pseudo": 'Oscar',
      "picture": "assets/images/oscar.jpeg",
      "post": "assets/images/post_oscar.jpg",
      "description": "Lorem ipsum dolor sit amet, mollit anim id est laborum."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: slideshowItems.map((slideShow) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(slideShow['post']), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      backgroundImage: AssetImage(slideShow['picture']),
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.favorite),
                      // Texte d'info-bulle
                      tooltip: 'Show Snackbar',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('button to add like.')));
                      },
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.mode_comment),
                      // Texte d'info-bulle
                      tooltip: 'Show Snackbar',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('button to add comment.')));
                      },
                    ),
                    IconButton(
                      color: Colors.white,
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
                      color: Colors.white,
                      icon: const Icon(Icons.bookmark),
                      // Texte d'info-bulle
                      tooltip: 'Show Snackbar',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('button to save post.')));
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        slideShow['description'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
