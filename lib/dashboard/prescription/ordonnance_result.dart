import 'dart:convert';
import 'package:flutter/material.dart';
import'../prescription/prescription.dart';

class OrdonnanceResult extends StatefulWidget {
  @override
  _OrdonnanceResultState createState() => _OrdonnanceResultState();
}


class _OrdonnanceResultState extends State<OrdonnanceResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ordonnance Resultat"),
        backgroundColor: Color(0xff6874ec),),
      body: ListView(children: <Widget>[
                   Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text("Ordonnances",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
                            
                            
                          ),
                        ),
                  SizedBox(height: 10),
                 Card(
                 	margin: EdgeInsets.all(10),
                 	child :  Container(
                    height: 300,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.all(20.0),
                 
                    child: Column(
                      children: [
                        Text("Ordonnance du 2021-04-13",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        
                        SizedBox(height: 10),
                       Container(
                       	decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          
                        )
                      ],
                      color: Color(0xffe8ecec),
                      borderRadius: BorderRadius.circular(10),
                    ),
                       	child : Column(
                          
                          children: <Widget>[

                           Align(
      alignment: Alignment.centerLeft,
      child: Text("Dr. TAOUIL Khalid",textAlign: TextAlign.left,),
    ),
                                                 Align(
      alignment: Alignment.centerLeft,
      child:  Text("143 Avenue Al Abtal, Agdal, Rabat"),
    ),
                                                 Align( alignment: Alignment.centerLeft,
      child: 
                           Text("Tel: +212 609349384"),
    ),
                                                 Align(
 alignment: Alignment.centerLeft,
      child: 
                           Text("INP: 94837439"),
    ),

                           SizedBox(height: 30),
                           Align(
       alignment: Alignment.centerLeft,
      child: 
                            Text("M. HAFDI Ahmed "),
    ),
                    
                          
                        
                                         Align(
      alignment: Alignment.centerLeft,
      child: Text("92 Kg- 2cm"),
    ),
                                                                            Align(
      alignment: Alignment.centerLeft,
      child: Text("Tel: +212 609349384"),
    ),
                                                                                          Align(
      alignment: Alignment.centerLeft,
      child:  Text("Le mardi 13 septembre 2020. Rabat"),
    ),          
                          
                          
                            
                          ],
                        ),) ,
                     
                   
                      ],
                    ),
                  ),
                  ),
                                  SizedBox(height: 10),
           Card(
            child : ListTile(
          leading: Icon(Icons.medical_services,color:Color(0xff6874ec)),
        title: Text('M??dicaments pr??scrits'),
        subtitle : Text('Ces ??lements ne sont pas modifiables.'),
      
      ),),
          
                 Container(  
                  margin: EdgeInsets.all(20),  
                  child: Table(  
                    defaultColumnWidth: FixedColumnWidth(120.0),  
                    border: TableBorder.all(  
                        color: Colors.black,  
                        style: BorderStyle.solid,  
                        width: 2),  
                    children: [  
                      TableRow( children: [  
                        Column(children:[Text('M??dicament', style: TextStyle(fontSize: 12.0))]),  
                        Column(children:[Text('Pesologie', style: TextStyle(fontSize: 12.0))]),  
                        Column(children:[Text('Quantit??', style: TextStyle(fontSize: 12.0))]),  
                      ]),  
                      TableRow( children: [  
                        Column(children:[Text('BIOTIC PLUS 500 ')]),  
                        Column(children:[Text('2 soir')]),  
                        Column(children:[Text('1')]),  
                      ]),  
                      TableRow( children: [  
                        Column(children:[Text('MELOXICAM GT 15 ')]),  
                        Column(children:[Text('1 matin')]),  
                        Column(children:[Text('2')]),  
                      ]),  
                      TableRow( children: [  
                        Column(children:[Text('PARANTAL C 1000 ')]),  
                        Column(children:[Text('2 midi')]),  
                        Column(children:[Text('3')]),  
                      ]),  
                    ],  
                  ),  
                ),
                Column (
children:[
 Row(
                      children: [
                          Container(
              margin: EdgeInsets.all(5),
              child: FlatButton(
                child:  Row( 
                  children: <Widget>[
                    Icon(Icons.send),
                    Text(" Confirmer et Envoyer")
                  ],
                ),
                color: Color(0xff6874ec),
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
                              Container(
              margin: EdgeInsets.all(5),
              child: FlatButton(
                child:  Row( 
                  children: <Widget>[
                    Icon(Icons.edit_outlined),
                    Text("Editer")
                  ],
                ),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Prescrire()),
                  );},
              ),
            ),
                              


                      ]
                  ),
 /* Row(
children :[
Container(
              margin: EdgeInsets.all(5),
              child: FlatButton(
                child:  Row( 
                  children: <Widget>[
                    Icon(Icons.save_outlined),
                    Text("T??l??charger")
                  ],
                ),
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
                                                      Container(
              margin: EdgeInsets.all(5),
              child: FlatButton(
                child:  Row( 
                  children: <Widget>[
                    Icon(Icons.print_outlined),
                    Text("Imprimer")
                  ],
                ),
                color: Colors.orange,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
]
  )*/

                 
]
                  )

                ]),
      
    );
  }
}