import 'package:flutter/material.dart';
import 'size_config.dart';

class SuratMap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SuratMap();
  }
}

class _SuratMap extends State<SuratMap> {
@override
  Widget build(BuildContext context) {

  SizeConfig().init(context);

    return MaterialApp(

//      theme: ThemeData(
//        primarySwatch: Colors.black,
//      ),

      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/map.jpg',
                width: SizeConfig.screenWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}