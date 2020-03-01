import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sitilinks/surat_map.dart';
import 'drawer.dart';
import 'package:intl/intl.dart';
import 'plan_trip.dart';
import 'size_config.dart';
import 'my_ticket.dart';
import 'ticket_details.dart';
import 'near_you.dart';
import 'my_routes.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  // DateTime _currentDate = new DateTime.now();
  static final now = new DateTime.now();
  static final formatter = new DateFormat('dd-MM-yyyy');
  static final String formattedTime = DateFormat('kk:mm:a').format(now);
  static final String _formattedDate = formatter.format(now);

  final todayDate = new Container(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
      child: Column(
        children: <Widget>[
          new Text(
            ' $formattedTime',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          new Text(
            ' $_formattedDate',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp( debugShowCheckedModeBanner: false
,
//      routes: {
//        '/image1': (context) => PlanTrip(),
//      },
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Surat Sitilink Clone',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(child:
            Container(
              color: Colors.blue[50],
              child: Column(
                children: <Widget>[
                  Row(
                    // images and time........................................
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            child: new Image.asset(
                              'images/image_home.png',
                              fit: BoxFit.fitHeight,
                              height: SizeConfig.blockSizeVertical * 15,
                              width: SizeConfig.screenWidth,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[

                                Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 2,
                                      top: SizeConfig.blockSizeHorizontal * 5),
                                  child: Row(children: <Widget>[
                                    Icon(Icons.access_time,color: Colors.white,),
                                    todayDate,
                                  ],)
                                ),

                                Container(
                                  margin: EdgeInsets.only(
                                      left: SizeConfig.blockSizeHorizontal * 14,
                                      top: SizeConfig.blockSizeHorizontal * 5),
                                  child: Image.asset('images/sitilink_photo.png'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 3,
                    ),
                    margin:  EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 3,
                            right: SizeConfig.blockSizeHorizontal * 3,
                            top: SizeConfig.blockSizeVertical * 1.5,
                            bottom: SizeConfig.blockSizeVertical * 1.5
                      ),
                    decoration:
                    BoxDecoration(color: Colors.white,
                      border: Border.all(color: Colors.white),
                        boxShadow: [new BoxShadow(
                          color: Colors.black.withOpacity(.3),
                          offset: Offset(1.0, 1.5),

                        ),],
                    borderRadius: BorderRadius.circular(30)),

                    child: Row(
                      // search bar..............
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            decoration: InputDecoration(
                             // focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              fillColor: Colors.white,
//                          border: new OutlineInputBorder(
//                            borderRadius: const BorderRadius.all(
//                              const Radius.circular(30.0),
//                            ),
//                          ),
                              hintText: 'Search bus route number',
                              hintStyle: TextStyle(color: Colors.blue, fontSize: 17),
                              icon: Icon(
                                Icons.search,
                                color: Colors.blue,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    // 1'st row of icon..............................
                    children: <Widget>[
                      Container(
                        //color: Colors.red,
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 15,
                            right: SizeConfig.blockSizeHorizontal * 15,
                            top: SizeConfig.blockSizeVertical * 3,
                            bottom: SizeConfig.blockSizeVertical * 3),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.grey.withOpacity(.5)),
                            left: BorderSide(width: 1.0, color: Colors.grey.withOpacity(.5)),
                            //right: BorderSide(width: 1.0, color: Colors.black),
                            bottom: BorderSide(width: 1.0, color: Colors.grey.withOpacity(.5)),
                          ),
                        ),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              //Padding(padding: EdgeInsets.only(top: 20)),

                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new PlanTrip()),
                                  );
                                },
                                //borderRadius: BorderRadius.zero,
                                child: Image.asset(
                                  'images/planner_home.png',
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 7,),
                              Text('Planner'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 15,
                            right: SizeConfig.blockSizeHorizontal * 15,
                            top: SizeConfig.blockSizeVertical * 3,
                            bottom: SizeConfig.blockSizeVertical * 3),
                        decoration:
                            BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(.5))),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              //Padding(padding: EdgeInsets.only(top: 20)),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => new TicketDetails()),
                                  );
                                },
                                child: Image.asset(
                                  'images/mticket_home.png',
                                  width: 70,
                                ),
                              ),
                              SizedBox(height: 7,),
                              Text('M ticket'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    // 2'st row of icon..............................
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        //color: Colors.red,
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 15,
                            right: SizeConfig.blockSizeHorizontal * 15,
                            top: SizeConfig.blockSizeVertical * 3,
                            bottom: SizeConfig.blockSizeVertical * 3),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.grey.withOpacity(.5)),
                            left: BorderSide(width: 1.0, color: Colors.grey.withOpacity(.5)),
                            //right: BorderSide(width: 1.0, color: Colors.black),
                            bottom: BorderSide(width: 1.0, color: Colors.grey.withOpacity(.5)),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            //Padding(padding: EdgeInsets.only(top: 20)),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new NearYou()),
                                );
                              },
                              //borderRadius: BorderRadius.zero,
                              child: Image.asset(
                                'images/stops.png',
                                width: 70,
                              ),
                            ),
                            SizedBox(height: 7,),
                            Text('Stops'),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 15,
                            right: SizeConfig.blockSizeHorizontal * 15,
                            top: SizeConfig.blockSizeVertical * 3,
                            bottom: SizeConfig.blockSizeVertical * 3),
                        decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(.5))),
                        child: Column(
                          children: <Widget>[
                            //Padding(padding: EdgeInsets.only(top: 20)),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new MyTicket()),
                                );
                              },
                              child: Image.asset(
                                'images/mytickets.png',
                                width: 70,
                              ),
                            ),
                            SizedBox(height: 7,),
                            Text('My ticket'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Row(
                    // 3'st row of icon..............................
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        //color: Colors.red,
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 15,
                            right: SizeConfig.blockSizeHorizontal * 14.5,
                            top: SizeConfig.blockSizeVertical * 3,
                            bottom: SizeConfig.blockSizeVertical * 3),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.grey.withOpacity(.5)),
                            left: BorderSide(width: 1.0, color: Colors.grey.withOpacity(.5)),
                            //right: BorderSide(width: 1.0, color: Colors.black),
                            bottom: BorderSide(width: 1.0, color: Colors.grey.withOpacity(.5)),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            //Padding(padding: EdgeInsets.only(top: 20)),

                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new MyRoutes()),
                                );
                              },
                              //borderRadius: BorderRadius.zero,
                              child: Image.asset(
                                'images/routes.png',
                                width: 70,
                              ),
                            ),
                            SizedBox(height: 7,),
                            Text('My routes'),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: SizeConfig.blockSizeHorizontal * 15,
                            right: SizeConfig.blockSizeHorizontal * 14,
                            top: SizeConfig.blockSizeVertical * 3,
                            bottom: SizeConfig.blockSizeVertical * 3),
                        decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(.5))),
                        child: Column(
                          children: <Widget>[
                            //Padding(padding: EdgeInsets.only(top: 20)),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                context,
                                new MaterialPageRoute(
                                builder: (context) => new SuratMap()),
                                );
                              },
                              child: Image.asset(
                                'images/suratmap.png',
                                width: 70,
                              ),
                            ),
                            SizedBox(height: 7,),
                            Text('Surat map'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ),
        drawer: new Drawer1(),
      ),
      theme: ThemeData(
        primaryColor: Colors.blue,
       // canvasColor: Colors.blue[100],
        // primarySwatch: Colors.yellow,
        //accentColor: Colors.red,
      ),
    );
  }
}
