import 'package:flutter/material.dart';
import 'package:ride_social/component/grid_widget.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Pour vous",
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              // Texte d'info-bulle
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('button to search content or user.')));
              },
            ),
          ],
        ),
        body: GridWidget());
  }
}
