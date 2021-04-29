import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:table_calendar/table_calendar.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import'./dashboard/dashboard.dart';
import'json_read.dart';
import '../dashboard/accueil.dart';
import'load_json.dart';
import '../dashboard/display_data/display_calender.dart';
import '../dashboard/display_data/ordonnance_view.dart';
import '../authentification/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'DwaXpress',
      home: SplashScreen(),
    );
  }
}



class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("assets/images/logo/logoD.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),


            InkWell(
              child: Text(
                'Designed by SehaChain',
                style: TextStyle(fontSize: 20.0, color: Colors.red),
              ),
              

            ),
            SizedBox(height: 40),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.red,
              strokeWidth: 2,
            ),
         
            SizedBox(height: 40),
            Padding(padding: EdgeInsets.only(top: 20.0)),
          ],
        ),
      ),
    );
  }
}
