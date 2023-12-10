import 'package:flutter/material.dart';
import 'package:trumio/screen/pages/home.dart';
import 'package:trumio/screen/pages/splash_screens/components/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trumio',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: SplashScreen(),
    );
  }
}
