import 'package:flutter/material.dart';

class DailougeScreen extends StatefulWidget {
  @override
  _DailougeScreenState createState() {
    return _DailougeScreenState();
  }
}

class _DailougeScreenState extends State<DailougeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        RaisedButton.icon(

        onPressed: () {
      _asyncInputDialog(context);
      },
          icon: Icon(Icons.print),
          label: Text("First Dailouge")),
            RaisedButton.icon(

                onPressed: () {
                  _asyncInputDialog1(context);
                },
                icon: Icon(Icons.print),
                label: Text("2nd Dailouge")),

          ],
        )
      ),

    );
  }

  Future<String> _asyncInputDialog1(
      BuildContext context,
      ) async {
    TextEditingController emailController = new TextEditingController();
    return showDialog<String>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return
          AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              contentPadding: EdgeInsets.only(top: 10.0),
              content: Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width ,
                  padding: EdgeInsets.only(left: 20,right: 20,top: 20
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color(0xFFFFFF),
                    borderRadius:
                    new BorderRadius.all(new Radius.circular(32.0)),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "FAQ - Frequently Asked Questions",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.black54,
                        height: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("What is triper?"),
                              Icon(
                                Icons.arrow_left,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Do i have to pay anything for joining?"),
                              Icon(
                                Icons.arrow_left,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("How do i use triper?"),
                              Icon(
                                Icons.arrow_left,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("How to add a position to an invitation?"),
                              Icon(
                                Icons.arrow_left,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Can I delete an active invitation of mine?"),
                              Icon(
                                Icons.arrow_left,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("is there any rating system?"),
                              Icon(
                                Icons.arrow_left,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("What about triper app?"),
                              Icon(
                                Icons.arrow_left,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )));
      },
    );
  }

  Future<String> _asyncInputDialog(
    BuildContext context,
  ) async {
    TextEditingController emailController = new TextEditingController();
    return showDialog<String>(
      context: context,
      barrierDismissible: true,
      // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return  AlertDialog(
                content:Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  child: Column(
                      children: <Widget>[
                        SizedBox(
                        height: 20,
                    ),
                        Text(
                          "Additional Properties (optional)",
                          style: TextStyle(fontSize: 20),
                        ),

                  SizedBox(
                    height: 20,
                  ),
                      Card(
                      child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                            child:
                                Text("informaition",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),flex: 8,
                                ),
                                Expanded(
                                  child:
                                  Text("yes",style: TextStyle(fontWeight: FontWeight.bold)),flex: 2,
                                ),
                                Expanded(
                                  child:
                                  Text("no",style:TextStyle(fontWeight: FontWeight.bold)),flex: 2,
                                ),
                                Expanded(
                                  child:
                                  Text("n/a",style:TextStyle(fontWeight: FontWeight.bold)),flex: 2,
                                ),


                              ],
                            ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 1,
                          color: Colors.black12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child:
                              Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text("Is the location accessible for people with a disability?",textAlign: TextAlign.start,)),flex: 8,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 1,
                          color: Colors.black12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child:
                              Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text("Is the location accessible for people with a disability?",textAlign: TextAlign.start,)),flex: 8,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 1,
                          color: Colors.black12,
                        ),Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child:
                              Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text("Is the location accessible for people with a disability?",textAlign: TextAlign.start,)),flex: 8,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 1,
                          color: Colors.black12,
                        ),Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child:
                              Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text("Is the location accessible for people with a disability?",textAlign: TextAlign.start,)),flex: 8,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 1,
                          color: Colors.black12,
                        ),Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child:
                              Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text("Is the location accessible for people with a disability?",textAlign: TextAlign.start,)),flex: 8,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),
                            Expanded(
                              child:
                              Checkbox(value: true, onChanged: null,activeColor: Colors.white,checkColor: Colors.black,),flex: 2,
                            ),


                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 1,
                          color: Colors.black12,
                        ),

                      ],
                      )
                      )
              ],
            )
                )

        );
      },
    );
  }
}
