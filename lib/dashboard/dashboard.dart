import 'package:flutter/material.dart';
import 'dart:convert';
import'../dashboard/mes_patients.dart';
import'../dashboard/ordonnances.dart';
import 'package:flutter/services.dart';
import '../dashboard/accueil.dart';
import'../dashboard/documents.dart';
import '../dashboard/profile/profile_page.dart';
import '../dashboard/agenda/agenda.dart';
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List _doctors = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/json_files/doctor.json');
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

    _createDrawerHeader(),

      ListTile(
        leading: Icon(Icons.home),

        title: Text('Accueil'),
        onTap: () {
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Accueil()),
                  );
          
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
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Patient()),
                  );
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
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ordonnance()),
                  );
        },
      
      ),
            ListTile(
                leading: Icon(Icons.folder),
        title: Text('Docements'),
        onTap: () {
         Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Document()),
                  );

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


Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'assets/images/logo/logo.png',
              width: 220,
              height: 220,
            ),
          ),
        ),
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Developed  by OrdoXpress",
                style: TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500))),
      ]));
}