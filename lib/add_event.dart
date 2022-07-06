import 'package:flutter/material.dart';

class AddEvent extends StatefulWidget {
  @override
  _AddEventState createState() {
    return _AddEventState();
  }
}

class _AddEventState extends State<AddEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("History"),
        leading: IconButton(icon: BackButton(color: Colors.white,), onPressed: (){ Navigator.pop(context);}),
      ) ,

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(top: 10,bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height / 1.28,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return _clip();
                    } else if (index == 1) {
                      return _sort();
                    } else if (index == 2) {
                      return _sort2();
                    } else if (index == 3) {
                      return _widget();
                    }
                  }),
            ),
            _filter()
          ],
        ),
      ),
    );
  }
  Widget _filter() {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(
        left: 40,
      ),
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Reset",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.blue,
              child: MaterialButton(
                padding: EdgeInsets.fromLTRB(60.0, 15.0, 60.0, 15.0),
                onPressed: () {

                },

                child:
                Text("Post",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    )),)

          ),
        ],
      ),
    );
  }
  Widget _clip() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "New Event",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xffF5F5F7),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: "Enter the event Subject",
                  ))),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xffF5F5F7),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: "Enter the talker name",
                  ))),
          SizedBox(
            height: 20,

          ),
          Card(
            elevation: 5,
            color: Color(0xffEFF6FF),
            child: InkWell(
              onTap: () {
              },
              child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Select event location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sort() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Prayers Timing ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white),
          ),

              Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(10),
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.blue)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("Morning",style: TextStyle(color: Colors.blue),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("07:00",style: TextStyle(color: Colors.blue),),

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.blue)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("Evening",style: TextStyle(color: Colors.blue),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("17:00",style: TextStyle(color: Colors.blue),),

                              ],
                            ),
                          ),

                        ],
                      ),
                          Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center ,
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.blue)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.add,color: Colors.blue,)

                              ],
                            ),
                          ),

                        ],
                      )),
                ),
              ),


        ],
      ),
    );
  }
  Widget _sort2() {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Lesson Timing",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white),
          ),

          Card(
            elevation: 5,
            child: InkWell(
              onTap: () {
              },
              child: Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(10),
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.blue)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("Friday",style: TextStyle(color: Colors.blue),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("14:00",style: TextStyle(color: Colors.blue),),

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 60,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.blue)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("Saturday",style: TextStyle(color: Colors.blue),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("21:00",style: TextStyle(color: Colors.blue),),

                              ],
                            ),
                          ),


                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center ,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.blue)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.add,color: Colors.blue,)

                          ],
                        ),
                      ),

                    ],
                  )),

            ),
          ),


        ],
      ),
    );
  }

  Widget _widget(){
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20,top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Amenities",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white),
          ),

          Card(
            elevation: 5,
            child: InkWell(
              onTap: () {
              },
              child:Padding(padding: EdgeInsets.all(10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
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
                ],
              ),

                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center ,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.blue)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.add,color: Colors.blue,)

                      ],
                    ),
                  ),
                ],
              ),

            )
          )

          )
        ],
      ),
    );
  }
}