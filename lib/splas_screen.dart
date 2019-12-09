import 'package:flutter/material.dart';
import 'dart:async';
import 'welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/splascreen.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
//        child: CircularProgressIndicator(
//          valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
//        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('The Believers Pill',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Euphoria',
              fontWeight: FontWeight.bold,
              fontSize: 90.0,
              color: Colors.white
            ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10.0,0,20.0),
              child: Text('A 90 DAYS DEVOTIONAL INTO CHRIST',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,40.0),
              child: Text('BY PASTORS MUYIWA & TEMITOPE AREO',
              style: TextStyle(
                color: Colors.white, fontSize: 13.0
              ),),
            ),

          CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
       ),
          ],
        ),
        ),
      ),
    );
  }
}
