import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Image.asset(
            'images/sitilink_photo.png',
          width: SizeConfig.screenHeight,
        ),
      ),
    );
  }
}