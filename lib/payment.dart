import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sitilinks/payment_options.dart';
import 'package:sitilinks/ticket.dart';
//import 'package:intl/intl.dart';

class Payment extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _PaymentState();
  }
}

class _PaymentState extends State<Payment> {
  TextEditingController name = new TextEditingController();
  List<String> _date = ['01  ', '02  ', '03  ', '04  ','05  ','06  ','07  ','08  ','09  ','10  ','11  ','12  ']; // Option 2
  String _selecteddate;
  List<String> _year = ['2020  ', '2021  ', '2022  ', '2023  ','2024  ','2025  ','2026  ','2027  ','2028  ','2029  ','2030  ','2031  ','2032  ']; // Option 2
  String _selectedyear;// Option 2

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SingleChildScrollView(child:  Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 60, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'images/firstdata.png',
                          width: 130,
                        ),
                        Image.asset(
                          'images/ICICI.png',
                          width: 130,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    padding:
                        EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Amount:',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          '15.00 INR',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '    Please enter your credit or debit card',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'information',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      '    Cardholder Name',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: TextField(style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabled: true,
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      '    Card Number',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: TextField(style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabled: true,
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      '    Expiration date',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 90,right: 10),
                    margin: EdgeInsets.only(top: 10,left: 20),
                    color: Colors.grey,
                    child: DropdownButton(icon: Icon(Icons.lens),
                      hint: Text('   '), // Not necessary for Option 1
                      value: _selecteddate,style: TextStyle(fontSize: 20,color: Colors.black),
                      onChanged: (newValue) {
                        setState(() {
                          _selecteddate = newValue;
                        });
                      },
                      items: _date.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 70,right: 10),
                    margin: EdgeInsets.only(top: 10,left: 20),
                    color: Colors.grey,
                    child: DropdownButton(icon: Icon(Icons.lens),
                      hint: Text('   '), // Not necessary for Option 1
                      value: _selectedyear,style: TextStyle(fontSize: 20,color: Colors.black),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedyear = newValue;
                        });
                      },
                      items: _year.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),


              Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '    Card Code',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          ' (typically on back of your card)',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: TextField(style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabled: true,
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20,left: 20),
                        child: MaterialButton(
                          child: Row(
                            children: <Widget>[
                              Text('Cancle',style: TextStyle(fontSize: 20,color: Colors.black),),

                            ],
                          ),
                          textColor: Colors.white,
                          padding: EdgeInsets.only(top: 10,bottom: 10),
                          color: Colors.white70,
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(builder: (context) => new PaymentOptions(),),
                            );
                          },
                          //colorBrightness: Brightness.dark,
                          minWidth: 80,
                          // shape: OutlineInputBorder(),

                        ),
                      ),

                      SizedBox(
                        width: 15,
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20,left: 20),
                        child: MaterialButton(
                          child: Row(
                            children: <Widget>[
                              Text('Pay Now',style: TextStyle(fontSize: 20,color: Colors.black),),

                            ],
                          ),
                          textColor: Colors.white,
                          padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
                          color: Colors.white70,
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => new Ticket(),),
                          );
                        },
                          //colorBrightness: Brightness.dark,
                          minWidth: 80,
                          // shape: OutlineInputBorder(),

                        ),
                      ),

                    ],
                  ),
                ],
              )

            ],
          ),
        ),),
      ),
    );
  }
}
