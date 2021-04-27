import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class OrdonnanceView extends StatefulWidget {
  @override
  _OrdonnanceViewState createState() => _OrdonnanceViewState();
}


class _OrdonnanceViewState extends State<OrdonnanceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ordonnance Détail"),
        backgroundColor: Color(0xff6874ec),),
      body:  Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text("Ordonnances ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
                           
                          
                            
                          ),
                        ),
      
    );
  }
}