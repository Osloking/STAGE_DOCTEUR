import 'package:flutter/material.dart';
import 'dart:convert';
import'../dashboard/body_elements/search_bar.dart';
import 'package:flutter/services.dart';
import'../dashboard/mon_agenda.dart';
import'../dashboard/accueil.dart';
import'../dashboard/Ordonnances.dart';
import'../dashboard/display_data/display_patient.dart';
import'../dashboard/patient_details/patient_details.dart';
import'../dashboard/documents.dart';

class Patient extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
Future<void> _invitation_envoye() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('une invitation dwaXpress a été envoyée vers le patient '),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
     
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Patient()),
                  );
            },
          ),
        ],
      );
    },
  );
}

Future<void> _inviter_patient() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Entrez un email pour envoyer une invitation '),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
             
              TextField(
      decoration: InputDecoration(
        hintText: 'email',
       
        counterText: '0 characters',
        border: OutlineInputBorder(),
      ),
    ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Envoyer'),
            onPressed: () {
             _invitation_envoye() ;
            },
          ),
        ],
      );
    },
  );
}


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
        
    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ordonnance()),
                  );
        

        },
      ),
            ListTile(
                leading: Icon(Icons.folder,color:Color(0xff6874ec)),
        title: Text('Docements'),
        onTap: () {
         Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Document()),
                  );

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

      body: Column(
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
                onPressed: () {_inviter_patient();},
              ),
            ),           
                          ),
                        ),

         Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Icon(Icons.person,color:Color(0xff6874ec)),
                            title: Text("Total Patients:",style: TextStyle(color: Colors.black),),
                            subtitle: Text("16",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),

                          ),
                        ),
FlatButton(
                child: Text('Voir tous patients',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                color:Color(0xff6874ec),
                onPressed: () {  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DisplayPatient()),
                  );},
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


