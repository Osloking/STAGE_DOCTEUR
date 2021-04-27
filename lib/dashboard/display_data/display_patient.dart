import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

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
                subtitle: Text(showData[index]['name']),
              
              
              ),  ),
    onTap: () { 
        print(showData[index]['id']); 
    },
);


          
            },
            itemCount: showData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/json_files/patient.json"),
        
        ),
      ),
      
    );
  }
}