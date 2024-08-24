import 'package:connexion/pages/home.dart';
import 'package:connexion/theme/theme.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "form connexion",
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
