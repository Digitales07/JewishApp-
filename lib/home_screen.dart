import 'package:flutter/material.dart';

import 'main_screen.dart';


class UserRandomBasis extends State<UserRandomBasisPage> {
  List _deviceLabels = ['Country', 'Israel', 'Random basis'];
  List _deviceLabels2 = ['City','Jerusalem'];
  List<DropdownMenuItem<String>> _labelMenuItems;
  List<DropdownMenuItem<String>> _labelMenuItems2;
  String _selectedLabel;
  String _selectedLabe2;
  String _nameLabel;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);



  @override
  initState() {
    super.initState();
    _labelMenuItems = buildAndGetDropDownMenuItems(_deviceLabels);
    _labelMenuItems2 = buildAndGetDropDownMenuItems(_deviceLabels2);
    _selectedLabel = _labelMenuItems[0].value;
    _selectedLabe2 = _labelMenuItems2[0].value;
  }

  void changedDropDownItemLabel(String selectedItem) {
    setState(() {
      _selectedLabel = selectedItem;
      print('_selectedLabel: $_selectedLabel');
    });
  }
  void changedDropDownItemLabel2(String selectedItem) {
    setState(() {
      _selectedLabe2 = selectedItem;
      print('_selectedLabe2: $_selectedLabe2');
    });
  }





  Widget labelDropDownList1() {
    return new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.blue
        ),
        child: // Your Dropdown Code Here,
    Container(
      height: 45.0,
      width: MediaQuery.of(context).size.width,
      decoration: new BoxDecoration(
        border: Border.all(color: Colors.white, width: 1.0),
      ),
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: DropdownButton(
            icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
            value: _selectedLabel,style: TextStyle(fontSize: 20,color: Colors.white),
            items: _labelMenuItems,
            iconSize: 40,
            onChanged: changedDropDownItemLabel,
          ),
        ),
      ),
    )
    );
  }

  Widget labelDropDownList2() {
    return new Theme(
        data: Theme.of(context).copyWith(
        canvasColor: Colors.blue
    ),
    child:Container(
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      decoration: new BoxDecoration(
        border: Border.all(color: Colors.white, width: 1.0),
      ),
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: DropdownButton(
            icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
            value: _selectedLabe2,style: TextStyle(fontSize: 20,color: Colors.white,),
            items: _labelMenuItems2,
            iconSize: 40,
            onChanged: changedDropDownItemLabel2,
          ),
        ),
      ),
    ),
    );
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List amounts) {
    List<DropdownMenuItem<String>> items = new List();
    for (String amount in amounts) {
      items.add(new DropdownMenuItem(value: amount, child: new Text(amount)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: 40,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Text("Finish",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20)),
      ),
    );

    return Scaffold(
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/background.png"), fit: BoxFit.cover),
          ),
          padding: EdgeInsets.all(60.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Please fill your location so you can received updates about your recommended city',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                ),
                labelDropDownList1(),

                SizedBox(
                  height: 20.0,
                ),



                labelDropDownList2(),


                SizedBox(
                  height: 25,
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child:
                loginButon,
                ),
              ]),

      ),
    );
  }


}

class UserRandomBasisPage extends StatefulWidget {
  @override
  createState() => UserRandomBasis();
}

