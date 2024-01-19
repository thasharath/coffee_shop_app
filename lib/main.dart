import 'package:coffee_shop_app/home.dart';
import 'package:coffee_shop_app/onboarding.dart';
import 'package:coffee_shop_app/bottom_bar.dart';
import 'package:coffee_shop_app/product_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Onboarding(),
        '/home': (context) => const ProductDetails(),
        '/bottombar': (context) => const Bottombar(),
      },
    );
  }
}
