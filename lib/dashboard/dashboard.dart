import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';



class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List _doctors = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/doctor.json');
    final data = await json.decode(response);
    setState(() {
      _doctors = data["doctors"];
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dashboard',
        ),
      ),
      drawer: Drawer(
  child: ListView(
 
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        child: Text("Dr Khalid Taouil "),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),

        title: Text('Accueil'),
        onTap: () {
          
        },
      ),
      ListTile(
        leading: Icon(Icons.view_agenda),

        title: Text('Mon Agenda'),
        onTap: () {
          
        },
      ),
      ListTile(
         leading: Icon(Icons.people),
        title: Text('Mes Patients'),
        onTap: () {
        
        },
      ),
        ListTile(
          leading: Icon(Icons.chat),
        title: Text('Messagerie'),
        onTap: () {
        
        },
      ),
         ListTile(
          leading: Icon(Icons.insert_drive_file),
        title: Text('Ordonnances'),
        onTap: () {
        
        },
      ),
            ListTile(
                leading: Icon(Icons.folder),
        title: Text('Docements'),
        onTap: () {
        
        },
      ),
                 ListTile(
                    leading: Icon(Icons.videocam),
        title: Text('Téléconsultation'),
        onTap: () {
        
        },
      ),
    ],
  ),
),


    );
  }
}