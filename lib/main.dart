import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:table_calendar/table_calendar.dart';

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
      home: LoginPage(),
    );
  }
}


class DisplayPatient extends StatefulWidget {
  @override
  _DisplayPatientState createState() => _DisplayPatientState();
}

class _DisplayPatientState extends State<DisplayPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List des patients"),
        backgroundColor: Color(0xff6874ec),),
      body: Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData=json.decode(snapshot.data.toString());
          return ListView.builder(
            
            itemBuilder: (BuildContext context, int index){
              return 
InkWell(
    child:     Card (
                margin: EdgeInsets.all(10),
                          child:ListTile(
                            leading : Icon(Icons.person,color:Color(0xff6874ec)),
                title: Text(showData[index]['id']),
                subtitle: Text(showData[index]['par_qui']),
              
              
              ),  ),
    onTap: () { 
        
    },
);


          
            },
            itemCount: showData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/json_files/ordonnance.json"),
        
        ),
      ),
      
    );
  }
}