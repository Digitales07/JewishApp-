import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class Filter_Screen extends StatefulWidget {
  @override
  _Filter_ScreenState createState() {
    return _Filter_ScreenState();
  }
}

class _Filter_ScreenState extends State<Filter_Screen> {
  double evelution1 = 0;

  double evelution2 = 15;

  double _value = 0;
  double _value2 = 0;
  double _value3 = 0;
  bool _isCheckedAlaram = false;
  bool _isCheckedWarning = false;
  bool _isCheckedPairing = false;

  void onChangedAlaram(bool value) {
    setState(() {
      _isCheckedAlaram = value;
    });
  }

  void onChangedWarning(bool value) {
    setState(() {
      _isCheckedWarning = value;
    });
  }

  void onChangedPairing(bool value) {
    setState(() {
      _isCheckedPairing = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
//        decoration: BoxDecoration(
//          image: DecorationImage(
//            image: AssetImage("assets/background.png"),
//            fit: BoxFit.cover,
//          ),
//        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height / 1.3,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return _clip();
                    } else if (index == 1) {
                      return _sort();
                    } else if (index == 2) {
                      return _ranger();
                    } else if (index == 3) {
                      return _checkbox();
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
                    Text("Apply",
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
            "Filters",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
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
                hintText: "Search by Synagogue Name",
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
                hintText: "Search by Location",
              ))),
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
            "Sort results",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87),
          ),
          Row(
            children: <Widget>[
              Card(
                elevation: evelution1,
                color: Color(0xffEFF6FF),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      evelution1 = 15;
                      evelution2 = 0;
                    });
                  },
                  child: Container(
                      height: 50,
                      width: 120,
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
                            "Near By",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          )
                        ],
                      )),
                ),
              ),
              Card(
                color: Color(0xffF7EEC9),
                elevation: evelution2,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      evelution1 = 0;
                      evelution2 = 15;
                    });
                  },
                  child: Container(
                      width: 120,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.timelapse,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Time   ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ranger() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Time Range:    ${_value.round()} :00 - ${_value2.round()} :00",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          FlutterSlider(
            values: [00.00, 23.59],
            rangeSlider: true,
            tooltip: FlutterSliderTooltip(),
            max: 24.00,
            min: 00.00,
            onDragging: (handlerIndex, lowerValue, upperValue) {
              _value = lowerValue;
              _value2 = upperValue;
              setState(() {});
            },
          ),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "00.00",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "23.59",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Distance:    ${_value3.round()} Kilometer radius",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          FlutterSlider(
            values: [1],
            max: 10,
            min: 0,
            onDragging: (handlerIndex, lowerValue, upperValue) {
              _value3 = lowerValue;
              var _upperValue = upperValue;
              setState(() {});
            },
          ),
          Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "1k",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "10k",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _checkbox() {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Search Types:",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Row(children: [
            Checkbox(
                value: _isCheckedAlaram,
                onChanged: (bool value) {
                  onChangedAlaram(value);
                },
                checkColor: Colors.white,
                activeColor: Colors.blue),
            Text(
              'Synagogues and prays',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ]),
          Row(children: [
            Checkbox(
                value: _isCheckedWarning,
                onChanged: (bool value) {
                  onChangedWarning(value);
                },
                checkColor: Colors.white,
                activeColor: Colors.blue),
            Text(
              'Lessons',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ]),
          Row(children: [
            Checkbox(
              value: _isCheckedPairing,
              onChanged: (bool value) {
                onChangedPairing(value);
              },
              checkColor: Colors.white,
              activeColor: Colors.blue,
            ),
            Text(
              'Events',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
