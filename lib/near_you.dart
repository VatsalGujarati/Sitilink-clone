import 'package:flutter/material.dart';

class NearYou extends StatefulWidget {

  State<StatefulWidget> createState() {
    return _NearYou();
  }
}

class _NearYou extends State<NearYou> {

  // new
//  Widget get _loadingView {
//    return new Center(
//      child: new CircularProgressIndicator(),
//    );
//  }

  @override
  Widget build(BuildContext context) {

   // Widget body = _loadingView;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ticket'),
      ),
     // body: body,
    );
  }
}