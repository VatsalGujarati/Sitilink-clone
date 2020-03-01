import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Ticket extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _TicketState();
  }
}

class _TicketState extends State<Ticket> {
  static final now = new DateTime.now();
  static final formatter = new DateFormat('dd/MM/yyyy');
  static final String formattedTime = DateFormat('kk:mm:a').format(now);
  static final String _formattedDate = formatter.format(now);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Ticket'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),

        body: SingleChildScrollView(child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15,bottom: 10),
                    child: Image.asset(
                      'images/barcode.png',
                      width: 200,
                    ),
                  ),
                ],
              ),

              Divider(color: Colors.black,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15,bottom: 10),
                  //  padding: EdgeInsets.only(right: 200,top: 10),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        top: BorderSide(width: 1.0, color: Colors.grey,),
//                      ),
//                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Ticket Number',style: TextStyle(color: Colors.grey,fontSize: 17),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('7101000136108506',style: TextStyle(color: Colors.black,fontSize: 17),),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),

              Divider(color: Colors.black,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15,bottom: 10),
                   // padding: EdgeInsets.only(right: 220,top: 10),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        top: BorderSide(width: 1.0, color: Colors.grey,),
//                      ),
//                    ),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('Expires on',style: TextStyle(color: Colors.grey,fontSize: 17),),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text('$_formattedDate, 07:00',style: TextStyle(color: Colors.black,fontSize: 17),),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text('PM',style: TextStyle(color: Colors.black,fontSize: 17),),
                              ],
                            )
                          ],
                        ),

                        Row(
                          children: <Widget>[
//                            Image.asset(
//                              'images/barcode.png',
//                              width: 180,
//                            ),
                          ],
                        ),

                      ],
                    ),

                  ),
                ],
              ),

              Divider(color: Colors.black,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15,bottom: 10),
                    //padding: EdgeInsets.only(top: 10),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        top: BorderSide(width: 1.0, color: Colors.grey,),
//                      ),
//                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('Agency',style: TextStyle(color: Colors.grey,fontSize: 17),),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text('SMC-BUS',style: TextStyle(color: Colors.black,fontSize: 17),),
                              ],
                            )
                          ],
                        ),

//                        SizedBox(
//                          width: 190,
//                        ),

//                        Container(color: Colors.yellow,
//                          height: 45,width: 90,
//                          child: Image.asset(
//                            'images/sitilink_red.jpg',
//                            fit: BoxFit.fill,
//                          ),
//                        ),

                      ],
                    ),

                  ),
                ],
              ),

              Divider(color: Colors.black,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15,bottom: 10),
                   // padding: EdgeInsets.only(right: 180,top: 10),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        top: BorderSide(width: 1.0, color: Colors.grey,),
//                      ),
//                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 0.9),
                                  width: 12,height: 12,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.black)
                                  ),
                                  child: Icon(Icons.lens, color: Colors.white,size: 11,),
                                ),

                                SizedBox(width: 10,
                                ),

                                Text(
                                  ' SARTHANA NATURE PARK BRTS',
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ],)

                          ],),

                        SizedBox(height: 10,
                        ),

                        Row(
                          children: <Widget>[
                            Icon(Icons.lens, color: Colors.black,size: 14,),

                            SizedBox(width: 13,
                            ),

                            Text(
                              'ATHWAGATE',
                              style: TextStyle(color: Colors.black,fontSize: 17),
                            ),
                          ],),
                      ],
                    ),
                  )
                ],
              ),

              Divider(color: Colors.black,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15,bottom: 10),
                    //padding: EdgeInsets.only(right: 280,top: 10),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        top: BorderSide(width: 1.0, color: Colors.grey,),
//                      ),
//                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Ticket for',style: TextStyle(color: Colors.grey,fontSize: 17),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('Adult',style: TextStyle(color: Colors.black,fontSize: 17),),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),

              Divider(color: Colors.black,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15,bottom: 10),
                   // padding: EdgeInsets.only(right: 240,top: 10),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        top: BorderSide(width: 1.0, color: Colors.grey,),
//                      ),
//                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Route Number',style: TextStyle(color: Colors.grey,fontSize: 17),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('02U,12U',style: TextStyle(color: Colors.black,fontSize: 17),),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),

              Divider(color: Colors.black,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15,bottom: 10),
                    padding: EdgeInsets.only(right: 200,top: 10),
//                    decoration: BoxDecoration(
//                      border: Border(
//                        top: BorderSide(width: 1.0, color: Colors.grey,),
//                      ),
//                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Total fare',style: TextStyle(color: Colors.grey,fontSize: 17),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('₹15.00',style: TextStyle(color: Colors.black,fontSize: 17),),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),


            ],
          ),
        ),),
      ),
    );
  }
}
