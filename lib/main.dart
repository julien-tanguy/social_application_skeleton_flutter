import 'package:flutter/material.dart';
import 'package:ride_social/views/navigation_view.dart';
// Theme perso apppainter :
import 'package:json_theme/json_theme.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

Future<void> main() async {
  // S'aasurer que les widget sont bien initialisés :
  WidgetsFlutterBinding.ensureInitialized();

  /// Récupère le fichier de configuration theme
  final themeStr = await rootBundle.loadString('assets/theme.json');

  /// Conversion du fichier en objet
  final themeJson = jsonDecode(themeStr);

  /// Conversion en theme Flutter
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(MyApp(theme: theme));
}

class MyApp extends StatelessWidget {
  final ThemeData theme;
  const MyApp({super.key, required this.theme});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ride social',
      theme: theme,
      home: const NavigationView(),
    );
  }
}
