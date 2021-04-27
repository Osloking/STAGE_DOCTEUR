import 'package:flutter/material.dart';

class PatientDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Color(0xff6874ec),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.description)),
                Tab(icon: Icon(Icons.folder)),
                
                Tab(icon: Icon(Icons.contact_page)),
                Tab(icon: Icon(Icons.badge)),
                Tab(icon: Icon(Icons.people)),
              ],
            ),
            title: Text('Détails Patient '),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.description),
              Icon(Icons.folder),
              Icon(Icons.contact_page),
              Icon(Icons.badge),
                Icon(Icons.people),
            ],
          ),
        ),
      );
    
  }
}