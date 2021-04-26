import 'package:flutter/material.dart';
import 'dart:convert';
import'../dashboard/body_elements/search_bar.dart';
import 'package:flutter/services.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(

        backgroundColor: Color(0xff6874ec),
        
        actions: <Widget>[

/* IconButton(icon: Icon(Icons.search),
              onPressed: () {
                
              }),*/
 SizedBox(width:100),
        IconButton(
              icon: Icon(
                Icons.chat,
                size: 30,
                color: Color(0xffffffff),
              ),
              onPressed: () => {}),
        
          IconButton(
              icon: Icon(
                Icons.notifications_active,
                size: 30,
                color: Color(0xffffffff),
              ),
              onPressed: () => {}),
          IconButton(
              icon: Icon(
                Icons.person,
                size: 30,
                color: Color(0xffffffff),
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

      body: ListView(
      children: <Widget>[
        SearchWidget(),
        Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text("Bonjour"),
                            title: Text("Dr Khalid",style: TextStyle(color: Colors.black),),
                            
                          ),
                        ),


 Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Icon(Icons.person,color:Color(0xff6874ec)),
                            title: Text("Total Patients:",style: TextStyle(color: Colors.black),),
                            subtitle: Text("16"),
                            
                          ),
                        ),
  Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Icon(Icons.people,color:Colors.green),
                            title: Text("Patients Activés:",style: TextStyle(color: Colors.black),),
                            subtitle: Text("16"),
                            
                          ),
                        ),



 Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Icon(Icons.insert_drive_file,color:Colors.blue),
                            title: Text("Prescriptions:",style: TextStyle(color: Colors.black),),
                            subtitle: Text("16"),
                            
                          ),
                        ),


      ],
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