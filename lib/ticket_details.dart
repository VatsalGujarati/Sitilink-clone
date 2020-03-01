import 'package:flutter/material.dart';

class TicketDetails extends StatefulWidget {

  State<StatefulWidget> createState() {
    return _TicketDetails();
  }
}

class _TicketDetails extends State<TicketDetails> {

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
        title: new Text('Ticket Details'),
      ),
     // body: body,
    );
  }
}