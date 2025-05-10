import 'package:flutter/material.dart';
import 'package:food_offers/offers_screen.dart';
import 'package:food_offers/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Offers',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.customLightTheme,
      home: const OffersScreen(),
    );
  }
}
