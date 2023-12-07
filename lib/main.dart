import 'package:flutter/material.dart';
import 'package:trumio_v1/screen/pages/splash_screens/components/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trumio',
      // theme: ThemeData(
      //   colorScheme:
      //       ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 88, 162, 163)),
      // ),
      home: SplashScreen(),
    );
  }
}
