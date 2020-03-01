import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'confirm_details.dart';
import 'size_config.dart';


//import 'package:intl/intl.dart';
import 'plan_trip.dart';

class Details extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _DetailsState();
  }
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Details'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 5,
                  top: SizeConfig.blockSizeVertical * 3,
                  right: SizeConfig.blockSizeHorizontal * 1,
              ),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Row(
                    //,,,,,,,,,,,,,,,,,,,,Fare Prise,,,,,,,,,,,,,,,,,,,,,,
                    children: <Widget>[
                      Text(
                        'Fare',
                        style: TextStyle(fontSize: 15),
                      ),
                      Spacer(),
                      Text(
                        '₹15.00',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                      //color: Colors.teal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                                  Text(
                                    'Start at YOGY NAGAR BRTS ',
                                    style: TextStyle(fontSize: 15,color: Colors.grey),
                                  ),
                              Spacer(),
                                  Text(
                                    ' 08:12 PM',
                                    style: TextStyle(fontSize: 15),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),

                          SizedBox(height: SizeConfig.blockSizeVertical*1,
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                'To KHARVARNAGAR BRTS',
                                style: TextStyle(fontSize: 15),
                              ),
                              //Spacer(),
                            ],
                          ),

                          SizedBox(height: SizeConfig.blockSizeVertical*1,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.directions_bus,
                                color: Colors.red,
                                size: 25,
                              ),
                              Text(
                                ' 12D',
                                style: TextStyle(fontSize: 17),
                              ),

                              Spacer(),
//                          SizedBox(width: 150,
//                          ),

                              Image.asset(
                                'images/time.png',
                                width: 17,
                              ),
                              Text(
                                ' 8 min',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),

                          SizedBox(height: SizeConfig.blockSizeVertical*1),

                          Container(
                            padding: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal * 2,
                              top: SizeConfig.blockSizeVertical * 2,
                              right: SizeConfig.blockSizeHorizontal * 2,
                              bottom: SizeConfig.blockSizeVertical * 2,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 1.0, color: Colors.grey),
                                bottom: BorderSide(width: 1.0, color: Colors.grey),
                              ),
                            ),
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text('Service', style: TextStyle(fontSize: 15),),
                                Spacer(),
                                Text('SMC_Sitilink', style: TextStyle(fontSize: 15),),
                              ],
                            ),
                          ),

                          Container(width: SizeConfig.screenWidth,
                            padding: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal * 2,
                              top: SizeConfig.blockSizeVertical * 2,
                              bottom: SizeConfig.blockSizeVertical * 2,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.0, color: Colors.grey),
                              ),
                            ),
                            child:
                                Text('Stops', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      )),

                  Container(
                      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical*3),
                      //color: Colors.teal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Change at',
                                style: TextStyle(fontSize: 15,color: Colors.grey),
                              ),
                              Spacer(),
                              Text(
                                ' 08:12 PM',
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                'KHARVARNAGAR BRTS',
                                style: TextStyle(fontSize: 15,color: Colors.grey),
                              ),
                              //Spacer(),
                            ],
                          ),

                          SizedBox(height: SizeConfig.blockSizeVertical*1,
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                'To ATHWAGATE',
                                style: TextStyle(fontSize: 15),
                              ),
                              //Spacer(),
                            ],
                          ),

                          SizedBox(height: SizeConfig.blockSizeVertical*1,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.directions_bus,
                                color: Colors.red,
                                size: 25,
                              ),
                              Text(
                                ' 12D',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),

                          SizedBox(height: SizeConfig.blockSizeVertical*1,
                          ),

                          Container(
                            padding: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal * 2,
                              top: SizeConfig.blockSizeVertical * 2,
                              right: SizeConfig.blockSizeHorizontal * 2,
                              bottom: SizeConfig.blockSizeVertical * 2,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 1.0, color: Colors.grey),
                                bottom: BorderSide(width: 1.0, color: Colors.grey),
                              ),
                            ),
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text('Service', style: TextStyle(fontSize: 15),),
                                Spacer(),
                                Text('SMC_Sitilink', style: TextStyle(fontSize: 15),),
                              ],
                            ),
                          ),

                          SizedBox(height: SizeConfig.blockSizeVertical*1,
                          ),

                          Container(width: SizeConfig.screenWidth,
                            padding: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal * 2,
                              top: SizeConfig.blockSizeVertical * 2,
                              right: SizeConfig.blockSizeHorizontal * 2,
                              bottom: SizeConfig.blockSizeVertical * 2,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.0, color: Colors.grey),
                              ),
                            ),
                            child:
                            Text('Stops', style: TextStyle(fontSize: 15),),
                          ),
                        ],
                      )),

                  Container(
                    padding: EdgeInsets.only(
                     // left: SizeConfig.blockSizeHorizontal * 2,
                      top: SizeConfig.blockSizeVertical * 2,
                      right: SizeConfig.blockSizeHorizontal * 2,
                      bottom: SizeConfig.blockSizeVertical * 2,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Reach at',
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          '05:57 PM',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(width: SizeConfig.screenWidth,
              child:
            MaterialButton(
              child: Text('Buy Ticketss',style: TextStyle(fontSize: 15),),
              textColor: Colors.white,
              padding: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 2,
                top: SizeConfig.blockSizeVertical * 2,
                right: SizeConfig.blockSizeHorizontal * 2,
                bottom: SizeConfig.blockSizeVertical * 2,
              ),                    color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new ConfirmDetails(),),
                );
              },
              //colorBrightness: Brightness.dark,
              minWidth: 550,
              // shape: OutlineInputBorder(),

            ),
            ),

          ],
        ),
      ),
    );
  }
}
