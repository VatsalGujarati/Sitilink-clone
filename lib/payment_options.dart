import 'package:flutter/material.dart';
import 'payment.dart';
import 'size_config.dart';

//import 'package:intl/intl.dart';

class PaymentOptions extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _PaymentOptionsState();
  }
}

class _PaymentOptionsState extends State<PaymentOptions> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Payment Options'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Container(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  right: SizeConfig.blockSizeHorizontal*1,
                  left: SizeConfig.blockSizeHorizontal*1,
                 ),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal*13,
                          right: SizeConfig.blockSizeHorizontal*1,
                        top: SizeConfig.blockSizeVertical*2,
                        bottom: SizeConfig.blockSizeVertical*2,

                      ),
                      child:
                      Text('How would you like to pay?',
                        style: TextStyle(fontSize: 18,color: Colors.grey),),
                    ),

                    Container(
                      margin: EdgeInsets.only(
                       // right: SizeConfig.blockSizeHorizontal*1,
                        left: SizeConfig.blockSizeHorizontal*1,
                      ),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val);
                            },
                          ),
                          Container(
                           // width: SizeConfig.screenWidth,
                            padding: EdgeInsets.only(right: 80),
//                            padding: EdgeInsets.only(
//                                right: SizeConfig.blockSizeHorizontal*2,
//                                bottom: SizeConfig.blockSizeVertical*2,
//                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.0, color: Colors.grey,),
                              ),
                            ),
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              Image.asset(
                                'images/saved_card.png',
                                width: 80,
                              ),
                              SizedBox(width: SizeConfig.blockSizeHorizontal*3,
                              ),
                              Text('Saved Card',style: TextStyle(fontSize: 20),),
                          ],
                          ),
                          ),
                        ],
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: Colors.blue,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 150),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1.0, color: Colors.grey,),
                            ),
                          ),
                          child:
                          Row(
                            children: <Widget>[
                              Image.asset(
                                'images/visa.jpg',
                                width: 80,
                              ),
                              SizedBox(width: 10,
                              ),
                              Text('VISA',style: TextStyle(fontSize: 20),),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 3,
                          groupValue: selectedRadio,
                          activeColor: Colors.blue,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 13,right: 75),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1.0, color: Colors.grey,),
                            ),
                          ),
                          child:
                          Row(
                            children: <Widget>[
                              Image.asset(
                                'images/mastercard.png',
                                width: 80,
                              ),
                              SizedBox(width: 10,
                              ),
                              Text('Master Card',style: TextStyle(fontSize: 20),),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 4,
                          groupValue: selectedRadio,
                          activeColor: Colors.blue,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 115),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1.0, color: Colors.grey,),
                            ),
                          ),
                          child:
                          Row(
                            children: <Widget>[
                              Image.asset(
                                'images/maestro.png',
                                width: 80,
                              ),
                              SizedBox(width: 10,
                              ),
                              Text('Maestro',style: TextStyle(fontSize: 20),),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 5,
                          groupValue: selectedRadio,
                          activeColor: Colors.blue,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 135),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1.0, color: Colors.grey,),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'images/rupay.jpg',
                                width: 80,
                              ),
                              SizedBox(width: 10,
                              ),
                              Text('RuPay',style: TextStyle(fontSize: 20),),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                          value: 6,
                          groupValue: selectedRadio,
                          activeColor: Colors.blue,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        Image.asset(
                          'images/netbanking.png',
                          width: 80,
                        ),
                        SizedBox(width: 10,
                        ),
                        Text('NetBanking',style: TextStyle(fontSize: 20),),
                      ],
                    ),

                  ],
                ),
              ),

              Container(
//                      padding: const EdgeInsets.only(top: 25),
                  child:
                  MaterialButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
//                        SizedBox(width: 135,
//                        ),
                        Text('PAY NOW',style: TextStyle(fontSize: 20),),
                        SizedBox(width: 90,
                        ),
                        Text('₹15.00',style: TextStyle(fontSize: 20),),

                      ],
                    ),
                    textColor: Colors.white,
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new Payment(),),
                      );
                    },
                    //colorBrightness: Brightness.dark,
                    minWidth: 380,
                    // shape: OutlineInputBorder(),

                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
