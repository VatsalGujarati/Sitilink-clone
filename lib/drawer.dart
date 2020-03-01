import 'package:flutter/material.dart';
import 'size_config.dart';
import 'profile.dart';

class Drawer1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Drawer1State();
  }
}

class _Drawer1State extends State<Drawer1>{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return new Drawer(
          child: Container(
            child: Column(
              children: <Widget>[

                  Container(
                    height: SizeConfig.blockSizeVertical * 20,
                    color: Colors.grey[900],
                    child: DrawerHeader(
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration:
                            BoxDecoration(color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(100)),
                            child:
                          Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 50,
                          ),),

                          Container(
                            margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical * 2,
                              left: SizeConfig.blockSizeHorizontal * 5,
                            ),
                            child:
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[ InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                      builder: (context) => new Profile()),);
                                },
                                //borderRadius: BorderRadius.zero,
                                child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Vatsal Gujarati',style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Text('View profile',style: TextStyle(color: Colors.blue),),

                                  ],
                                ),
                              ),

                              ],
                            ),
                          ),
                        ],
                      ),
                ),
                  ),

//            UserAccountsDrawerHeader(
//              accountName: Text('Vatsal \nView Profile'),
//              decoration: BoxDecoration(
//                color: Colors.grey[900],
//              ),
//              currentAccountPicture: CircleAvatar(
//                backgroundColor: Colors.white,
//                child: Image.asset(
//                  'images/profile.png',
//                  fit: BoxFit.fill,
//                ),
//              ),
//            ),

              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text('My trips'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text('Transaction history'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text('Notification'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text('Feedback'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text('Invite friends'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text('Contact us'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text('Signout'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),

        ],
      ),
          ),

    );
  }
}