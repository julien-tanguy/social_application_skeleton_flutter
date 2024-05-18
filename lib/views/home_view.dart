import 'package:flutter/material.dart';
import 'package:ride_social/component/post_widget.dart';
import 'package:ride_social/component/story_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "Ride Social",
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite_border),
            // Texte d'info-bulle
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('button to display user notifications.')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.send),
            tooltip: 'Go to the messagerie',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Messagerie'),
                    ),
                    body: const Center(
                      child: Text(
                        'Aucune conversation.',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    floatingActionButton: FloatingActionButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    'button to start a new conversation.')));
                      },
                      child: const Icon(Icons.add),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      // body
      body:
          //stories
          SingleChildScrollView(
        child: Column(
          children: [
            StoryWidget(),
            PostWidget(),
          ],
        ),
      ),
    );
  }
}
