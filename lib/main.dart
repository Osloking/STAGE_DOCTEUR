import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: Text('Accueil'),
        onTap: () {
          
        },
      ),
      ListTile(
        title: Text('Mes Patients'),
        onTap: () {
        
        },
      ),
        ListTile(
        title: Text('Messagerie'),
        onTap: () {
        
        },
      ),
         ListTile(
        title: Text('Ordonnances'),
        onTap: () {
        
        },
      ),
            ListTile(
        title: Text('Docements'),
        onTap: () {
        
        },
      ),
                 ListTile(
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