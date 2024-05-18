import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class GridWidget extends StatelessWidget {
  GridWidget({super.key});

  // List exemple pour la gridView :
  final List gridItems = [
    {
      "picture": "assets/images/moto_1.png",
    },
    {
      "picture": "assets/images/moto_2.jpg",
    },
    {
      "picture": "assets/images/moto_3.jpg",
    },
    {
      "picture": "assets/images/moto_4.jpg",
    },
    {
      "picture": "assets/images/moto_5.jpg",
    },
    {
      "picture": "assets/images/moto_6.jpg",
    },
    {
      "picture": "assets/images/moto_7.png",
    },
    {
      "picture": "assets/images/moto_8.jpg",
    },
    {
      "picture": "assets/images/moto_9.jpg",
    },
    {
      "picture": "assets/images/fleur.jpeg",
    },
    {
      "picture": "assets/images/post_fleur.jpg",
    },
    {
      "picture": "assets/images/kevin.jpeg",
    },
    {
      "picture": "assets/images/post_kevin.jpg",
    },
    {
      "picture": "assets/images/marc.jpeg",
    },
    {
      "picture": "assets/images/post_marc.jpg",
    },
    {
      "picture": "assets/images/marie.jpeg",
    },
    {
      "picture": "assets/images/post_marie.jpg",
    },
    {
      "picture": "assets/images/nature.jpeg",
    },
    {
      "picture": "assets/images/post_nature.jpg",
    },
    {
      "picture": "assets/images/oscar.jpeg",
    },
    {
      "picture": "assets/images/post_oscar.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: GridView.count(
        crossAxisCount: 3,
        children: gridItems.map((picture) {
          return InstaImageViewer(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(picture['picture']),
                      fit: BoxFit.cover)),
            ),
          );
        }).toList(),
      ),
    );
  }
}
