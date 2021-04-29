import 'dart:convert';
import 'package:flutter/material.dart';

class Document extends StatefulWidget {
  @override
  _DocumentState createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(title: Text("Documents Liste"),
        backgroundColor: Color(0xff6874ec),),
      body: Center(
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