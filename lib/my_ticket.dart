import 'package:flutter/material.dart';

class MyTicket extends StatefulWidget {

  State<StatefulWidget> createState() {
    return _MyTicket();
  }
}

class _MyTicket extends State<MyTicket> {

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