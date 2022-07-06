import 'package:flutter/material.dart';

import 'dailouge.dart';
import 'mapscreen.dart';

class EventDetail extends StatefulWidget {
  @override
  _EventDetailState createState() {
    return _EventDetailState();
  }
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          MyAppBar(
            context: context,
          ),
          _clip(),
          _detail(),
        ],
      ),
    )));
  }

  Widget _clip() {
    return Container(
      color: Colors.black12,
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          "Synagogue Picture",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }

  Widget _detail() {
    return new Expanded(
        child: new Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Sysnagogue Name -A',
                    textAlign: TextAlign.start,
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          Text('King david street, Jerusalem',
                              textAlign: TextAlign.start,
                              style: new TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              )),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('Nosach: ',
                              textAlign: TextAlign.start,
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text('Sefaradi',
                              textAlign: TextAlign.start,
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ],
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Card(
                  color: Color(0xffEFF6FF),
                  elevation: 0,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        width: 180,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "11 Comments",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Amenities",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.wifi,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Parking",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.local_cafe,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Access",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffEFF6FF),
                      radius: 30,
                      child: Center(
                        child: Text(
                          '3+\nmore',
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                _prayersTiming(),
                SizedBox(
                  height: 10,
                ),
                _lessonTiming(),
                SizedBox(
                  height: 60,
                ),
              ],
            )));
  }

  Widget _prayersTiming() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Prayers Timing:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          elevation: 10,
          child: InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Morning Pray",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text(
                      "08:00",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.red),
                    ),
                  ],
                )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          elevation: 10,
          child: InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Afternoon Pray",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text(
                      "13:00",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.red),
                    ),
                  ],
                )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          elevation: 10,
          child: InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Evening Pray",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text(
                      "21:00",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.red),
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }

  Widget _lessonTiming() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Lesson Timing:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          elevation: 10,
          child: InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[

                            Text(
                              "Rabi David Romance",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black),
                            ),Text(
                              "  Big hall, first Door",
                              style: TextStyle(
                                  color: Colors.grey),
                            ),

                          ],
                        ),

                        Row(
                          children: <Widget>[

                            Icon(Icons.chat_bubble_outline,color: Colors.blue,size: 15,),

                            Text(
                              " 11 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black),
                            ),Icon(Icons.thumb_up,color: Colors.blue,size: 15,),Text(
                              " 3 ",
                              style: TextStyle(
                                  color: Colors.grey),
                            ),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(

                      height: 5,

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Friday",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          "08:00",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: Colors.red),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          elevation: 10,
          child: InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[

                            Text(
                              "Rabi David Romance",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black),
                            ),Text(
                              "  Big hall, first Door",
                              style: TextStyle(
                                  color: Colors.grey),
                            ),

                          ],
                        ),

                        Row(
                          children: <Widget>[

                            Icon(Icons.chat_bubble_outline,color: Colors.blue,size: 15,),

                            Text(
                              " 11 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black),
                            ),Icon(Icons.thumb_up,color: Colors.blue,size: 15,),Text(
                              " 3 ",
                              style: TextStyle(
                                  color: Colors.grey),
                            ),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(

                      height: 5,

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Friday",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          "08:00",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, color: Colors.red),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

class MyAppBar extends PreferredSize {
  MyAppBar({Key key, BuildContext context})
      : super(
          key: key,
          preferredSize: Size.fromHeight(70),
          child: Container(
              color: Colors.black12,
              height: 70,
              padding: EdgeInsets.only(left: 10, right: 10),
//
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    flex: 5,
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DailougeScreen()));
                                },
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                )),
                            Icon(
                              Icons.save_alt,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ],
                        )),
                    flex: 5,
                  ),
                ],
              )),
        );
}
