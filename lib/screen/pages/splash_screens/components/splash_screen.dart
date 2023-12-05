import 'package:flutter/material.dart';
import 'package:trumio/screen/pages/splash_screens/components/body.dart';
import 'package:trumio/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
//