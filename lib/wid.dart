import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class PatientDetails extends StatefulWidget {
  @override
  PatientDetailsState createState() => PatientDetailsState();
}

class PatientDetailsState extends State<PatientDetails> {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Patient Details',
          ),
          
          backgroundColor: Color(0xff6874ec),
         
        
        ),
        body: Column(

          children: <Widget>[
            
           Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading :  Icon(Icons.person,color:Color(0xff6874ec)),
                            title: Text("HAFDI Ahmed",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
                            subtitle: Text("23 ans"),          
                          ),
                        ), 

            SizedBox(
              height: 50,
              child: AppBar(
                 backgroundColor: Colors.white,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.description,color:Color(0xff6874ec),),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.folder_open,color:Color(0xff6874ec),
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.folder_shared,color:Color(0xff6874ec),
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.badge,color:Color(0xff6874ec),
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.people,color:Color(0xff6874ec),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
            
                 Icon(Icons.person,color:Color(0xff6874ec)),
                 Icon(Icons.person,color:Color(0xff6874ec)),
                 Icon(Icons.person,color:Color(0xff6874ec)),
                 Icon(Icons.person,color:Color(0xff6874ec)),
                 Icon(Icons.person,color:Color(0xff6874ec)),
                 

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}