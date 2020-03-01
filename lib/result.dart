import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'datails.dart';
import 'size_config.dart';
//import 'package:intl/intl.dart';
//import 'plan_trip.dart';

class Result extends StatefulWidget {
  final String query1, query2;
  Result({this.query1, this.query2});
  State<StatefulWidget> createState() {
    return _ResultState(query1, query2);
  }
}

class _ResultState extends State<Result> {
  String query1, query2;
  _ResultState(this.query1, this.query2);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Results'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 5,
                    bottom: SizeConfig.blockSizeHorizontal * 4,
                    top: SizeConfig.blockSizeHorizontal * 3),
                child: Row(
                  //....................first line.........................................
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        query1 + '  -  ' + query2,
                        style: TextStyle(fontSize: 18,color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Details()),
                      );
                    },
                    //borderRadius: BorderRadius.zero,
                    child:
                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 5,
                          right: SizeConfig.blockSizeHorizontal * 1,
                          bottom: SizeConfig.blockSizeHorizontal * 4,
                          top: SizeConfig.blockSizeHorizontal * 3),
                      color: Colors.cyan,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 3,
                          right: SizeConfig.blockSizeHorizontal * 3,
                          top: SizeConfig.blockSizeHorizontal * 3
                            ),
                            child: Row(
                              //,,,,,,,,,,,,,,,,,,,,,,,,,Prise,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '41 min   ' + '  ₹15.00',
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                 width: SizeConfig.blockSizeHorizontal * 25,
                                ),
                                Text(
                                  '11.12 Km',
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal * 3,
                                right: SizeConfig.blockSizeHorizontal * 3,
                                top: SizeConfig.blockSizeHorizontal * 3
                            ),
                            child: Row(
                              //,,,,,,,,,,,,,,,,,,,,,,,,,Icon,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                              children: <Widget>[
                                Icon(
                                  Icons.directions_bus,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                Text(
                                  '12D',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  '  >  ',
                                  style: TextStyle(fontSize: 25),
                                ),
                                Icon(
                                  Icons.directions_bus,
                                  color: Colors.indigo,
                                  size: 30,
                                ),
                                Text(
                                    '01U',
                                    style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal * 3,
                                right: SizeConfig.blockSizeHorizontal * 3,
                                top: SizeConfig.blockSizeHorizontal * 3
                            ),
                            child: Row(
                              //,,,,,,,,,,,,,,,,,,,,,,,,,,Change time,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                              children: <Widget>[
                                Text(
                                  'Change at ',
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                                Text(
                                  'KHARWARNAGAR BRTS',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                  textDirection: TextDirection.ltr,
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal * 3,
                                right: SizeConfig.blockSizeHorizontal * 3,
                                top: SizeConfig.blockSizeHorizontal * 3
                            ),
                            child: Row(
                              //,,,,,,,,,,,,,,,,,,,,,,,,,Reach time,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                               children: <Widget>[
                                Text(
                                  'Reach at ...... ',
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
