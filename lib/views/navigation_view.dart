import 'package:flutter/material.dart';
import 'package:ride_social/views/account_view.dart';
import 'package:ride_social/views/explore_view.dart';
import 'package:ride_social/views/home_view.dart';
import 'package:ride_social/views/slideshow_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  // Index pour la navigation bar :
  int index = 0;
  List<Widget> bodies = [
    const HomeView(),
    const ExploreView(),
    const SlideshowView(),
    const AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        // Signifie que le label ne sera affichée que lorsque l’élément est sélectionné :
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: index,
        onDestinationSelected: (int newValue) {
          setState(() {
            index = newValue;
          });
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home_outlined), label: "Accueil"),
          NavigationDestination(icon: Icon(Icons.search), label: "Pour vous"),
          NavigationDestination(
              icon: Icon(Icons.slideshow), label: "Découvrir"),
          NavigationDestination(
              icon: Icon(Icons.account_circle), label: "Compte"),
        ],
      ),
      body: bodies[index],
    );
  }
}
