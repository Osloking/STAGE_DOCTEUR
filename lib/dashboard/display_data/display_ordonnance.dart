import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'ordonnance_view.dart';
class Displayordonnance extends StatefulWidget {
  @override
  _DisplayordonnanceState createState() => _DisplayordonnanceState();
}

class _DisplayordonnanceState extends State<Displayordonnance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List des ordonnances"),
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
                            leading : Icon(Icons.insert_drive_file,color:Colors.green),
                title: Text(showData[index]['id']),
                subtitle: Text(showData[index]['name']),
              
              
              ),  ),
    onTap: () { 
         Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrdonnanceView()),
                  );
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

/*class DetailOrdonnance extends StatelessWidget {
  // Declare a field that holds the Todo.
  

  // In the constructor, require a Todo.
  

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text("Détails d'ordonnance"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(showData[index]['description']),
      ),
     
    );
  }
}*/