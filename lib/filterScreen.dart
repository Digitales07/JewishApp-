import 'package:flutter/material.dart';

import 'event_detail_page.dart';
import 'filter_screen.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() {
    return _FilterPageState();
  }
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: BackButton(
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.map,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 1.34,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return _clip();
                        } else if (index == 1) {
                          return _getBankCard();
                        } else if (index == 2) {
                          return _getBankCard();
                        } else if (index == 3) {
                          return _getBankCard();
                        }
                      }),
                ),_filter()
              ],
            ),
        ),
    );
  }

  Widget _getBankCard() {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10,top: 10),
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventDetail()),
            );
          },
          child:Card(
          elevation: 10,
            child: Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 100,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black12,
                          ),
                          child: Center(
                            child: Text("Synagogue icon"),
                          ),
                        ),
                        flex: 3,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Text(
                                    "Synagogue name - A",
                                    style: TextStyle(fontSize: 15),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Comment",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ]),
                        flex: 3,
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 5, top: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    width: 80,
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.location_on),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text("400m")
                                      ],
                                    )),
                                Row(
                                  children: <Widget>[
                                    Text("17:20",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                                    SizedBox(width: 5,),
                                    Text("min 93))",style: TextStyle(color: Colors.green),)
                                  ],
                                )
                              ],
                            )),
                        flex: 4,
                      ),
                    ],
                  ),
                )
            )
        )
        )
    );
  }
  Widget _clip(){
    return Row(
      children: <Widget>[
        Expanded(
        child:

        Chip(
          label: Text('16:57 - 20:25',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
          backgroundColor: Color(0xffEFF6FF),
        )),
        Expanded(
            child:

            Chip(
              label: Text('3k around my location',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
              backgroundColor: Color(0xffEFF6FF),
            )),
        Expanded(
            child:

            Chip(
              label: Text('Synagogue',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
              backgroundColor: Color(0xffEFF6FF),
            )),
      ],
    ) ;
  }

  Widget _filter(){
    return Container(
      padding: EdgeInsets.only(left: 20,),
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("4 result Found",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
      Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.blue ,
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Filter_Screen()),
            );
          },
          child: Row(
            children: <Widget>[
              Icon(Icons.settings_input_component,color: Colors.white,),SizedBox(
          width: 20,
        ),
              Text("Filter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white, )),

            ],
          )
      ),
      ),
        ],
      ),
    );
  }
}
