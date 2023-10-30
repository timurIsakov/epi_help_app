import 'package:flutter/material.dart';

import 'screens/log_in_screen.dart';
import 'screens/settings_aura_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Nunito",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SettingsAuraScreen(
        type: 'Sensory aura',
      ),
    );
  }
}
