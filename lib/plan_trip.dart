//import 'package:flutter/material.dart';
//
//class PlanTrip extends StatefulWidget {
//
//  State<StatefulWidget> createState() {
//    return _PlanTrip();
//  }
//}
//
//class _PlanTrip extends State<PlanTrip> {
//
//  // new
//  Widget get _loadingView {
//    return new Center(
//      child: new CircularProgressIndicator(),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//
//    Widget body = _loadingView;
//
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Plan Trip'),
//      ),
//      body: body,
//    );
//  }
//}


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'result.dart';

class PlanTrip extends StatefulWidget {

    State<StatefulWidget> createState() {
    return _PlanTripState();
  }
}

class _PlanTripState extends State<PlanTrip> {
 // String value;
 // final dio = new dio();

  String query1;
  String query2;

  static final now = new DateTime.now();
  static final formatter = new DateFormat('dd-MM-yyyy');
  static final String formattedTime = DateFormat('kk:mm:a').format(now);


  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();

//  String selected;
  @override
  Widget build(BuildContext context) {
    controller1.text=query1;
    controller2.text=query2;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Plan Trip'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[

              Container(//,,,,,,,,,,,,,,,,,,,,Start Stop,,,,,,,,,,,,,,,,,,,,,,,,,
                padding: EdgeInsets.only(top: 20, bottom: 10, left: 10),

                child: TextFormField(
                  onTap: () async  {
                   final String selected = await showSearch(context: context, delegate: StartStop());
                 //   if (selected != null && selected != query) {
                      setState(() {
                        query1 = selected;
                        Text(query1);
                      });
                      print(query1);

                     // return Text(query);
                  },
                  controller: controller1,
                  onChanged: (query1) {
                    setState(() {
                       Text(query1);
                    });
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    icon: Icon(Icons.trip_origin,
                               color: Colors.black,
                               size: 17,),
                    hintText: 'Enter start stop',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
//                      icon: Icon(
//                        Icons.search,
//                        color: Colors.blue,
//                        size: 5,
//                      ),
                  ),
                ),
                // ),
              ),

              Container(//,,,,,,,,,,,,,,,,,,,,End Stop,,,,,,,,,,,,,,,,,,,,,,,,,
                padding: EdgeInsets.only(top: 15, bottom: 10, left: 10),

                child: TextFormField(
                  onTap: () async  {
                    final String selected = await showSearch(context: context, delegate: EndStop());
                    //   if (selected != null && selected != query) {
                    setState(() {
                      query2 = selected;
                      Text(query2);
                    });
                    print(query2);

                    // return Text(query);
                  },
                  controller: controller2,
                  onChanged: (query2) {
                    setState(() {
                      Text(query2);
                    });
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    icon: Icon(Icons.trip_origin,
                      color: Colors.indigo,
                      size: 17,),
                    hintText: 'Enter end stop',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
//                      icon: Icon(
//                        Icons.search,
//                        color: Colors.blue,
//                        size: 5,
//                      ),
                  ),
                ),
                // ),
              ),

              Container(//,,,,,,,,,,,,,,,,,,,,,,,,,,,,Time,,,,,,,,,,,,,,,,,,,,,,,,,,
                padding: const EdgeInsets.only(top: 15),
                child: Row(children: <Widget>[
                  Container(padding: const EdgeInsets.only(right: 15,left: 10),
                    child:
                          Image.asset(
                            'images/clock.png',
                            width: 25,
                          ),),
                  Container(
                    child:
                            Text('$formattedTime',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                ),),],
                ),
              ),

              Container(
                  padding: const EdgeInsets.only(top: 30,right: 15,left: 15),
                child:
                MaterialButton(
                  child: Text('Get rotues'),
                  textColor: Colors.white,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10,bottom: 10),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => new Result(query1 : query1,query2 : query2)),
                    );
                  },
                  //colorBrightness: Brightness.dark,
                  minWidth: 550,
                 // shape: OutlineInputBorder(),

                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StartStop extends SearchDelegate<String> {
  final stops = [
    "YOGI NAGAR BRTS",
    "VANMALI JUNCTION WEST BRTS",
    "ATHWAGATE",
    "KHARWAR NAGAR",
    "SARTHANA NATURE PARK BRTS",
    "UDHNA DARWAZA",
    "ADAJAN GSRTC",
    "SACHIN G.I.D.C.",
    "ONGC COLONY",
    "PAL R.T.O.",
    "KOSAD EWS H2",
    "Someshwar Junction",
    "AMEZIA AMUZEMENT PARK",
    "GAJERA CIRCLE",
    "KAMREJ TERMINAL",
    "RAILWAY STATION TER",
    "SWAMI NARAYAN SANSTHA",
  ];

  final suggestion = [
    "YOGI NAGAR BRTS",
    "VANMALI JUNCTION WEST BRTS",
    "ATHWAGATE",
    "KHARWAR NAGAR",
    "SARTHANA NATURE PARK BRTS",
    "UDHNA DARWAZA",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return null;
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? suggestion
        : stops.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
         // return query;
          //close(context, suggestion[index]);
          Navigator.pop(context,suggestionList[index].toString());

//          Navigator.push(
//            context,
//            new MaterialPageRoute(builder: (context) => new PlanTrip(query)),
//          );
        },
        leading: Icon(Icons.directions_bus),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}

class EndStop extends SearchDelegate<String> {
  final stops = [
    "YOGI NAGAR BRTS",
    "VANMALI JUNCTION WEST BRTS",
    "ATHWAGATE",
    "KHARWAR NAGAR",
    "SARTHANA NATURE PARK BRTS",
    "UDHNA DARWAZA",
    "ADAJAN GSRTC",
    "SACHIN G.I.D.C.",
    "ONGC COLONY",
    "PAL R.T.O.",
    "KOSAD EWS H2",
    "Someshwar Junction",
    "AMEZIA AMUZEMENT PARK",
    "GAJERA CIRCLE",
    "KAMREJ TERMINAL",
    "RAILWAY STATION TER",
    "SWAMI NARAYAN SANSTHA",
  ];

  final suggestion = [
    "YOGI NAGAR BRTS",
    "VANMALI JUNCTION WEST BRTS",
    "ATHWAGATE",
    "KHARWAR NAGAR",
    "SARTHANA NATURE PARK BRTS",
    "UDHNA DARWAZA",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return null;
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? suggestion
        : stops.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
          // return query;
          //close(context, suggestion[index]);
          Navigator.pop(context,suggestionList[index].toString());

//          Navigator.push(
//            context,
//            new MaterialPageRoute(builder: (context) => new PlanTrip(query)),
//          );
        },
        leading: Icon(Icons.directions_bus),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}
