import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        backgroundColor: Color(0xfffb5d04),
        
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.person,
                size: 30,
                color: Color(0xff333333),
              ),
              onPressed: () => {}),
          IconButton(
              icon: Icon(
                Icons.notification,
                size: 30,
                color: Color(0xff333333),
              ),
              onPressed: () => {}),
        
        ],
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

     /* body: HomeBody(),*/

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