import 'dart:async';

import 'package:flutter/material.dart';

import 'package:fb_auth_example/provider.dart';
import 'package:fb_auth_example/auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'buble.dart';
import 'home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      auth: Auth(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        home: new SplashScreen(),
        routes: <String, WidgetBuilder>{
          '/HomeScreen': (BuildContext context) =>
          new MyHomePage()
        },
      ));
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {

    var _duration = new Duration(seconds: 2);

    return new Timer(_duration, ()=> '/HomeScreen');
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        ));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/splash.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }


}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Auth auth = Provider.of(context).auth;
    return StreamBuilder<String>(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final bool loggedIn = snapshot.hasData;
          if (loggedIn ==true) {
            return UserRandomBasisPage();
          } else {
            return LoginPage();
          }
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
        actions: <Widget>[
          FlatButton(
            child: Text("Sign Out"),
            onPressed: () async {
              try {
                Auth auth = Provider.of(context).auth;
                await auth.signOut();
              } catch (e) {
                print(e);
              }
            },
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Text('Welcome'),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final FocusNode myFocusNodeEmailLogin = FocusNode();
  final FocusNode myFocusNodePasswordLogin = FocusNode();

  final FocusNode myFocusNodePassword = FocusNode();
  final FocusNode myFocusNodeEmail = FocusNode();
  final FocusNode myFocusNodeName = FocusNode();

  TextEditingController loginEmailController = new TextEditingController();
  TextEditingController loginPasswordController = new TextEditingController();
  TextEditingController signupEmailController = new TextEditingController();
  TextEditingController signupNameController = new TextEditingController();
  TextEditingController signupPasswordController = new TextEditingController();
  TextEditingController signupConfirmPasswordController =
  new TextEditingController();

  PageController _pageController;

  Color left = Colors.blue;
  Color right = Colors.white;





  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowGlow();
          },
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/background.png"), fit: BoxFit.cover),
              ),
              child: Center(

                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 75.0),
                      child: new Image(
                          width: 150.0,
                          height: 150.0,
                          fit: BoxFit.fill,
                          image: new AssetImage('assets/new.png')),
                    ),
                    Padding(

                      padding: EdgeInsets.only(top: 20.0),
                      child: Text("Welcome new User ! ",style: TextStyle(fontSize: 25,color: Colors.white,),textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 80.0),
                      child: Align(alignment: Alignment.center,
                        child:Text("Sign In with",style: TextStyle(fontSize: 25,color: Colors.white,),textAlign: TextAlign.start,),
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: _buildMenuBar(context),
                    ),
                    Expanded(
                      flex: 2,
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (i) {
                          if (i == 0) {
                            setState(() {
                              right = Colors.white;
                              left = Colors.blue;

                            });
                          } else if (i == 1) {
                            setState(() {
                              right = Colors.deepOrange;
                              left = Colors.white;
                            });
                          }
                        },
                        children: <Widget>[
                          new ConstrainedBox(
                            constraints: const BoxConstraints.expand(),

                          ),
                          new ConstrainedBox(
                            constraints: const BoxConstraints.expand(),
//
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }

  @override
  void dispose() {
    myFocusNodePassword.dispose();
    myFocusNodeEmail.dispose();
    myFocusNodeName.dispose();
    _pageController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _pageController = PageController();
  }

  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16.0),
      ),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 3),
    ));
  }

  Widget _buildMenuBar(BuildContext context) {
    return Container(
      width: 300,
      height: 60.0,
      decoration: BoxDecoration(
        color: Color(0x552B2B2B),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: CustomPaint(
        painter: TabIndicationPainter(pageController: _pageController),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: ()async {
                    _pageController?.animateToPage(0,
                        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
                    try {
                      final _auth = Provider.of(context).auth;
                      final id = await _auth.signInWithFacebook();
                      print('signed in with facebook $id');
                    } catch (e) {

                      print(e);
                    }
                  },
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/facebook-logo.svg',
                        height: 20.0,
                        width: 20.0,
                        color: left,
                        allowDrawingOutsideViewBox: true,
                      ),
                      Text("Facebook", style: TextStyle(color: left, fontSize: 16.0,),),
                    ],
                  )
              ),
            ),
            //Container(height: 33.0, width: 1.0, color: Colors.white),
            Expanded(
              child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: ()async {
                    _pageController?.animateToPage(1,
                        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
                    try {
                      final _auth = Provider.of(context).auth;
                      final id = await _auth.signInWithGoogle();
                      print('signed in with google $id');
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/google-plus-logo.svg',
                        height: 20.0,
                        width: 20.0,
                        color: right,
                        allowDrawingOutsideViewBox: true,
                  ),
                      Text("Google", style: TextStyle(color: right, fontSize: 16.0,),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}