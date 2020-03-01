import 'package:flutter/material.dart';
//import 'size_config.dart';


class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Profile();
  }
}

class _Profile extends State<Profile>{
//
//  Widget get _loadingView {
//    return new Center(
//      child: new CircularProgressIndicator(),
//    );
//  }

  @override
  Widget build(BuildContext context) {

   // Widget body = _loadingView;


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Text(
                'Profile',
              //  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Spacer(),
              Text('Edit'),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        //body: body,

      ),
    );
  }
}