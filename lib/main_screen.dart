import 'package:fb_auth_example/searchevent.dart';
import 'package:flutter/material.dart';
import 'add_event.dart';
import 'bank_card.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<BankCardModel> cards = [
    BankCardModel('Hoang Cuu Long', '4221 5168 7464 2283', '08/20', 10000000),
    BankCardModel('Hoang Cuu Long', '4221 5168 7464 2283', '08/20', 10000000),
    BankCardModel('Hoang Cuu Long', '4221 5168 7464 2283', '08/20', 10000000),
    BankCardModel('Hoang Cuu Long', '4221 5168 7464 2283', '08/20', 10000000),
  ];

  double screenWidth = 0.0;
  double _evelution = 0;

//  EdgeInsets smallItemPadding;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return _userInfoWidget();
              } else if (index == 1) {
                return _userBankCardsWidget();
              } else if (index == 2) {
                return _userBankCardsWidget2();
              } else if (index == 3) {
                return _userBankCardsWidget3();
              } else {
                return _bottomButton();
              }
            }),
      ),
    );
  }

  Widget _userInfoWidget() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Jerusalem, Israel',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ))
                  ],
                )),
                Stack(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 1,
              color: Colors.white,
            )
          ],
        ));
  }

  Widget _userBankCardsWidget() {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
      ),
//      height: 400.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 5.0,
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                Text(
                  'Lessons around your city: ',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25.0),
            height: 190.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return _getBankCard(index);
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ))),
        ],
      ),
    );
  }

  Widget _userBankCardsWidget2() {
    return Container(
//      height: 400.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: 40,
                ),
                Text(
                  'Lessons & Prays',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 55),
            child: Text(
              'Popular Lessons',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            height: 180.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return _getBankCard1(index);
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ))),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 55),
            child: Text(
              'Last added Synagogues and lesson',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 25),
            height: 180.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return _getBankCard1(index);
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ))),
        ],
      ),
    );
  }

  Widget _bottomButton() {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new FloatingActionButton(backgroundColor: Colors.blue,onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddEvent()),
            );

          },child: Icon(Icons.add),heroTag: null,),
          new FloatingActionButton(backgroundColor: Colors.blue,onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage()),
            );
          },child: Icon(Icons.search),heroTag: null,)
        ],
      ),
    );
  }

  Widget _userBankCardsWidget3() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

        ],
      ),
    );
  }

  Widget _getBankCard(int index) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Lesson Subject',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Talker: Rabbi David',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        Text(
                          'date: today,20:30',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                          height: 60,
                          width: 90,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black12,
                          ),
                          child: Center(
                            child: Text("icon"),
                          ),

                    )
                  ],
                ),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Text(
                    'last comment: "its great lesson!"',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Card(
                    color: Colors.redAccent,
                    elevation: _evelution,
                    child: InkWell(
                      onTap: () {
                      },
                      child: Container(
                          width: 70,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Text(
                                "4 star",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
            ),
               Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Container(
                        width: 250,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1)
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 10,
                            ),Text("Ronald 32 st, Israel")
                          ],
                        ),
                      )
                  ),

              ],
            ),
          )
        )));
  }

  Widget _getBankCard1(int index) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Lesson Subject',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'Talker: Rabbi David',
                                style: TextStyle(color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 80,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.black12,
                            ),
                            child: Center(
                              child: Text("icon"),
                            ),

                          )
                        ],
                      ),


                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'date: today,20:30',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(width: 40,),
                          Card(
                            color: Colors.redAccent,
                            elevation: _evelution,
                            child: InkWell(
                              onTap: () {
                              },
                              child: Container(
                                  width: 60,
                                  height: 40,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[

                                      Text(
                                        "4 star",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Container(
                            width: 200,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 1)
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.location_on),
                                SizedBox(
                                  width: 10,
                                ),Text("Ronald 32 st, Israel")
                              ],
                            ),
                          )
                      ),

                    ],
                  ),
                )
            )));
  }


}
