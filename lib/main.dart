import 'package:flutter/material.dart';
import 'home_page.dart';
import 'splash_screen.dart';

void main() => runApp(Clone());

class Clone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CloneState();
  }
}

class _CloneState extends State<Clone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: new SplashScreen(),
    );
  }
}

