import 'package:flutter/material.dart';

class MyRoutes extends StatefulWidget {

  State<StatefulWidget> createState() {
    return _MyRoutes();
  }
}

class _MyRoutes extends State<MyRoutes> {

  // new
//  Widget get _loadingView {
//    return new Center(
//      child: new CircularProgressIndicator(),
//    );
//  }

  @override
  Widget build(BuildContext context) {

    //Widget body = _loadingView;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ticket Details'),
      ),
     // body: body,
    );
  }
}