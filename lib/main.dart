import 'package:flutter/material.dart';
import 'package:labo_flutter/pages/home_page.dart';
import 'package:labo_flutter/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: const Home_page(),
    );
  }
}

