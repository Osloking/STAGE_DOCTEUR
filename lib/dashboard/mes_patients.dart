import 'package:flutter/material.dart';
import 'dart:convert';
import'../dashboard/body_elements/search_bar.dart';
import 'package:flutter/services.dart';
import'../dashboard/mon_agenda.dart';
import'../dashboard/accueil.dart';
import'../load_json.dart';
class Patient extends StatelessWidget {
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
                Icons.mail,
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
        leading: Icon(Icons.home,color:Color(0xff6874ec)),

        title: Text('Accueil'),
        onTap: () {
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Accueil()),
                  );
          
        },
      ),
      ListTile(
        leading: Icon(Icons.view_agenda,color:Color(0xff6874ec)),

        title: Text('Mon Agenda'),
        onTap: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Agenda()),
                  );
          
        },
      ),
      ListTile(
         leading: Icon(Icons.people,color:Color(0xff6874ec)),
        title: Text('Mes Patients'),
        onTap: () {
        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Patient()),
                  );
        },
      ),
        ListTile(
          leading: Icon(Icons.chat,color:Color(0xff6874ec)),
        title: Text('Messagerie'),
        onTap: () {
        
        },
      ),
         ListTile(
          leading: Icon(Icons.insert_drive_file,color:Color(0xff6874ec)),
        title: Text('Ordonnances'),
        onTap: () {
        
        },
      ),
            ListTile(
                leading: Icon(Icons.folder,color:Color(0xff6874ec)),
        title: Text('Docements'),
        onTap: () {
        
        },
      ),
                 ListTile(
                    leading: Icon(Icons.videocam,color:Color(0xff6874ec)),
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
                            title: Text("Repertoir Patients",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
                            subtitle: Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('inviter un patient',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                color:Colors.green,
                onPressed: () {},
              ),
            ),           
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
              'assets/images/logo/logoD.png',
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
                    color: Colors.black,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500))),
      ]));
}