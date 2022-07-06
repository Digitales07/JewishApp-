import 'package:flutter/material.dart';

import 'filterScreen.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  double screenWidth = 0.0;
  @override
  Widget build(BuildContext context) {

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.redAccent ,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FilterPage()),
          );
        },
        child: Text("New Search",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20,
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("History"),
        leading: IconButton(icon: BackButton(color: Colors.white,), onPressed: (){ Navigator.pop(context);}),
      ) ,
      body:

      Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column
          (
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/1.4,
            child:
        ListView.builder(
        itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return _getBankCard();
              } else if (index == 1) {
                return _getBankCard();
              } else if (index == 2) {
                return _getBankCard();
              }
            }),),

        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child:loginButon)
          ],
        )
      )
    );
  }
  Widget _getBankCard() {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),

        child: Card(
            child: Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 110,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           color: Colors.grey,
                         ),

                         child: Center(
                           child: Text("Synagogue icon"),
                         ),

                       ),
                        flex: 3,
                      ),Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                        Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
              child: Text("Date: 25/22019",style: TextStyle(fontSize: 15),)),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 1)
                              ),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.location_on),
                                  SizedBox(
                                width: 10,
                            ),Text("Ronald 32 ")
                                ],
                              ),
                            )
              ),

                          ],
                        ),
                        flex: 4,
                      ),Expanded(
                        child: Icon(Icons.arrow_forward_ios,size: 20,),
                        flex: 2,
                      ),

                    ],
                  ),
                )
            )));
  }
}
