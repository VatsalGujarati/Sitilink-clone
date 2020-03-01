import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'payment_options.dart';
import 'size_config.dart';
//import 'package:intl/intl.dart';

class ConfirmDetails extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ConfirmDetailsState();
  }
}

class _ConfirmDetailsState extends State<ConfirmDetails> {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Confirm details'),
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
                left: SizeConfig.blockSizeHorizontal * 3,
                top: SizeConfig.blockSizeVertical * 3,
                right: SizeConfig.blockSizeHorizontal * 1,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 12,height: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)
                          ),
                          child: Icon(Icons.lens, color: Colors.white,size: 11,),
                        ),

                        SizedBox(width: SizeConfig.blockSizeHorizontal*2,
                        ),

                        Text(
                          ' SARTHANA NATURE PARK BRTS',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],),
                  ),

                  SizedBox(height: SizeConfig.blockSizeVertical*2,
                  ),

                  Row(
                    children: <Widget>[
                      Icon(Icons.lens, color: Colors.black,size: 14,),

                      SizedBox(width: SizeConfig.blockSizeHorizontal*2,
                          ),

                          Text(
                            'ATHWAGATE',
                            style: TextStyle(fontSize: 17),
                          ),
                    ],
                  ),

                  SizedBox(height: SizeConfig.blockSizeVertical*1,
                  ),

                  Container(
                    width: SizeConfig.screenWidth,
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Tickets for', style: TextStyle(fontSize: 15,color: Colors.grey),),
                            SizedBox(height: SizeConfig.blockSizeVertical*1,
                            ),
                            Text('Adult', style: TextStyle(fontSize: 17),),

                          ],),
                  ),

                  Container(
                    width: SizeConfig.screenWidth,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Route number', style: TextStyle(fontSize: 15,color: Colors.grey),),
                        SizedBox(height: SizeConfig.blockSizeVertical*1,
                        ),
                        Text('12D, 01U', style: TextStyle(fontSize: 17),),
                        SizedBox(height: SizeConfig.blockSizeVertical*1,
                        ),
                        Text('Change at KHARWARNAGAR BRTS',
                          style: TextStyle(fontSize: 15,color: Colors.grey),),

                      ],),
                  ),


                ],
              ),
            ),

            Container(
                width: SizeConfig.screenWidth,
                child:
                MaterialButton(
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      Text('PROCEED TO PAYMENT',style: TextStyle(fontSize: 15),),
                      SizedBox(width: SizeConfig.blockSizeHorizontal*7,
                      ),
                      Text('₹15.00',style: TextStyle(fontSize: 15),),
                    ],
                  ),
                  textColor: Colors.white,
                  padding: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical*2,
                      bottom: SizeConfig.blockSizeVertical*2),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => new PaymentOptions(),),
                    );
                  },
                  //colorBrightness: Brightness.dark,
                  // shape: OutlineInputBorder(),

                )
            ),

          ],
        ),
      ),
    );
  }
}
