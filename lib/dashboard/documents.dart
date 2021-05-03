import 'dart:convert';
import 'package:flutter/material.dart';

class Document extends StatefulWidget {
  @override
  _DocumentState createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
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
            
                 Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData=json.decode(snapshot.data.toString());
          return ListView.builder(
            
            itemBuilder: (BuildContext context, int index){
              return 
InkWell(
    child:     Card (
                margin: EdgeInsets.all(10),
                          child:ListTile(
                            leading : ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 44,
    minHeight: 44,
    maxWidth: 64,
    maxHeight: 64,
  ),
  child: Image.asset("assets/images/icons/pdf.png"),
),
                title: Text(showData[index]['id']),
                subtitle: Text(showData[index]['par_qui']),
              
              
              ),  ),
    onTap: () { 
         
    },
);


          
            },
            itemCount: showData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/json_files/document.json"),
        
        ),
      ),
                Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData=json.decode(snapshot.data.toString());
          return ListView.builder(
            
            itemBuilder: (BuildContext context, int index){
              return 
InkWell(
    child:     Card (
                margin: EdgeInsets.all(10),
                          child:ListTile(
                            leading : ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 44,
    minHeight: 44,
    maxWidth: 64,
    maxHeight: 64,
  ),
  child: Image.asset("assets/images/icons/pdf.png"),
),
                title: Text(showData[index]['id']),
                subtitle: Text(showData[index]['par_qui']),
              
              
              ),  ),
    onTap: () { 
         
    },
);


          
            },
            itemCount: showData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/json_files/document.json"),
        
        ),
      ),
                Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData=json.decode(snapshot.data.toString());
          return ListView.builder(
            
            itemBuilder: (BuildContext context, int index){
              return 
InkWell(
    child:     Card (
                margin: EdgeInsets.all(10),
                          child:ListTile(
                            leading : ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 44,
    minHeight: 44,
    maxWidth: 64,
    maxHeight: 64,
  ),
  child: Image.asset("assets/images/icons/pdf.png"),
),
                title: Text(showData[index]['id']),
                subtitle: Text(showData[index]['par_qui']),
              
              
              ),  ),
    onTap: () { 
         
    },
);


          
            },
            itemCount: showData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/json_files/document.json"),
        
        ),
      ),
               Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData=json.decode(snapshot.data.toString());
          return ListView.builder(
            
            itemBuilder: (BuildContext context, int index){
              return 
InkWell(
    child:     Card (
                margin: EdgeInsets.all(10),
                          child:ListTile(
                            leading : ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 44,
    minHeight: 44,
    maxWidth: 64,
    maxHeight: 64,
  ),
  child: Image.asset("assets/images/icons/pdf.png"),
),
                title: Text(showData[index]['id']),
                subtitle: Text(showData[index]['par_qui']),
              
              
              ),  ),
    onTap: () { 
         
    },
);


          
            },
            itemCount: showData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/json_files/document.json"),
        
        ),
      ),
                 Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData=json.decode(snapshot.data.toString());
          return ListView.builder(
            
            itemBuilder: (BuildContext context, int index){
              return 
InkWell(
    child:     Card (
                margin: EdgeInsets.all(10),
                          child:ListTile(
                            leading : ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 44,
    minHeight: 44,
    maxWidth: 64,
    maxHeight: 64,
  ),
  child: Image.asset("assets/images/icons/pdf.png"),
),
                title: Text(showData[index]['id']),
                subtitle: Text(showData[index]['par_qui']),
              
              
              ),  ),
    onTap: () { 
         
    },
);


          
            },
            itemCount: showData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/json_files/document.json"),
        
        ),
      ),
                 

                ],
              ),
            ),
          ],
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