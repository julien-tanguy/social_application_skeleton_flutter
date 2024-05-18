import 'package:flutter/material.dart';
import 'package:ride_social/component/grid_widget.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "marc.doe",
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            // Texte d'info-bulle
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('button to go settings account.')));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.power_settings_new,
              color: Colors.red,
            ),
            tooltip: 'active alert dialog',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // Photo de profil + infos followers:
          Row(
            children: [
              // photo de profil :
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/marc.jpeg"),
                    ),
                    Text('marc.doe'),
                  ],
                ),
              ),
              const Spacer(),
              // infos followers :
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: const [
                    Text(
                      '12',
                      style: TextStyle(fontSize: 23),
                    ),
                    Text(
                      'publications',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: const [
                    Text(
                      '187',
                      style: TextStyle(fontSize: 23),
                    ),
                    Text(
                      'followers',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: const [
                    Text(
                      '203',
                      style: TextStyle(fontSize: 23),
                    ),
                    Text(
                      'suivi(e)s',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child:
                        const Text('Modifier', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Partager le profil',
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_a_photo),
                    label: Text(''),
                  ),
                ),
              ],
            ),
          ),
          // publication de l'utilisateur :
          GridWidget()
        ],
      ),
    );
  }
}
