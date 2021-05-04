import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import'../patient_details/patient_details.dart';
import'../prescription/ordonnance_result.dart';
import '../body_elements/search_medecine.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'dart:async';
import 'dart:convert';

enum SingingCharacter { lafayette, jefferson,tree }
class Prescrire  extends StatefulWidget {
 

  @override
  _PrescrireState createState() => new _PrescrireState();
}
List<String> localData =  ['ABILIFY 10 MG, Comprimé','ABILIFY 15 MG, Comprimé','ABSTRAL 100 µG, Comprimé sublingual','ACARBOSE LAPROPHAN 50 MG, Comprimé','ACDigest, Gélule','ACEPRIL PLUS 4 MG, Comprimé','D-BLASTIN 20 MG, Poudre pour perfusion','D-STRESS, Comprimé','EAU P.P.I. Injectable 5 ML','FABRAZYME 35 MG','GABAMOX 300 MG, Gélule'];

class _PrescrireState extends State<Prescrire> {
  int _currentStep = 0;
  SingingCharacter? _character = SingingCharacter.lafayette;

  String? dropdownvalue = 'Apple';
  Map<String, String> selectedValueMap = Map();
  var items =  ['Apple','Banana','Grapes','Orange','watermelon','Pineapple','hhh'];
  @override
  void initState() {
    //selectedValueMap["local"] = null;
    
    super.initState();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: AppBar(title: Text("Préscription en ligne"),
        backgroundColor: Color(0xff6874ec),),
      body: ListView(
        //padding: const EdgeInsets.all(8.0),
        children : [
  Stepper(
          type: StepperType.vertical,
          steps: _mySteps(),
          currentStep: this._currentStep,
          onStepTapped: (step) {
            setState(() {
              this._currentStep = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (this._currentStep < this._mySteps().length - 1) {
                this._currentStep = this._currentStep + 1;
              } else {
                //Logic to check if everything is completed
                //print('Completed, check fields.');
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (this._currentStep > 0) {
                this._currentStep = this._currentStep - 1;
              } else {
                this._currentStep = 0;
              }
            });
          },
        ),
 Row(            mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                      children: [
                         
                          RaisedButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)),
                              color: Color(0xff6874ec),                              textColor: Colors.white,
                              child:  Row( 
                  children: <Widget>[
                    Icon(Icons.send),
                    Text("Envoyer")
                  ],
                ),
                              onPressed: () {
                               
                              },
                            ),
                         
                             
             RaisedButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)),
                              color: Colors.red,
                              textColor: Colors.white,
                              child:  Row( 
                  children: <Widget>[
                    Icon(Icons.save_outlined),
                    Text("Télécharger")
                  ],
                ),
                              onPressed: () {
                               
                              },
                            ),


 RaisedButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)),
                              color: Colors.orange,
                              textColor: Colors.white,
                              child:  Row( 
                  children: <Widget>[
                    Icon(Icons.print_outlined),
                    Text("Imprimer")
                  ],
                ),
                              onPressed: () {
                               
                              },
                            ),

                      ]
                  ),
        ]


      ),
    );
  }

 Widget getSearchableDropdown(List<String> listData, mapKey) {
    List<DropdownMenuItem> items = [];
    for(int i=0; i < listData.length; i++) {
      items.add(new DropdownMenuItem(
          child: new Text(
            listData[i],
          ),
          value: listData[i],
        )
      );
    }
    return new SearchableDropdown(
      items: items,
      value: selectedValueMap[mapKey],
      isCaseSensitiveSearch: false,
      hint: new Text(
        'Select One'
      ),
      searchHint: new Text(
        'Select One',
        style: new TextStyle(
            fontSize: 20
        ),
      ),
      onChanged: (value) {
        setState(() {
          selectedValueMap[mapKey] = value;
        });
      },
    );
  }


  List<Step> _mySteps() {
    List<Step> _steps = [
      Step(
        title: Text(
          'Médicament',
          style: TextStyle(fontSize: 10),
        ),
        content: SingleChildScrollView(
          child: Container(
            height: 100,
            width: double.infinity,
            color: Colors.white.withOpacity(0.4),
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      'Ajouter un Médicament',
                      style: new TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                  // use local data for providing options and store selected value to the key "local"
                  getSearchableDropdown(localData, "local"),
                
                
                ],
              ),
            ),
          ),
        ),


        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text('Posologie', style: TextStyle(fontSize: 10)),

        content: Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading :FlatButton(
                child: Text('Posologie'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
              ),
              title: Column(
                              children :[
                              
 RadioListTile<SingingCharacter>(
          title: const Text('Matin'),
          value: SingingCharacter.lafayette,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
  RadioListTile<SingingCharacter>(
          title: const Text('Aprés midi'),
          value: SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
   RadioListTile<SingingCharacter>(
          title: const Text('nuit'),
          value: SingingCharacter.tree,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
           
                              ]

                              ), 
                              
                          ),
                        ),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text('Détails', style: TextStyle(fontSize: 10)),
        content: Column (
          children : [

    SizedBox(
                height: 30,
              ),

    Container(
             
                child: TextFormField(
                  //initialValue: 'nom',
                  decoration: InputDecoration(
                    labelText: 'Taille en cm *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.height_outlined,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ),
      SizedBox(
                height: 30,
              ),
      Container(
             
                child: TextFormField(
                  //initialValue: 'nom',
                  decoration: InputDecoration(
                    labelText: 'Poids en kg *',
                    //errorText: 'Error message',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.fitness_center_outlined,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ),
        SizedBox(
                height: 30,
              ),
      Container(
             
                child: TextFormField(
                  //initialValue: 'nom',
                  decoration: InputDecoration(
                    labelText: 'Clairance(ml/min)*',
                    errorText: 'Format :0-180',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.speed_outlined,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
              ),
          ]
          ),
        isActive: _currentStep >= 2,
      ),
      Step(
        title: Text('Insuffisance', style: TextStyle(fontSize: 10)),
        content: Column ( children : [
Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text("Insuffisance\n rénal",style: TextStyle(color: Colors.black),),
                            title : Column(
                              children :[
 RadioListTile<SingingCharacter>(
          title: const Text('Aucune'),
          value: SingingCharacter.lafayette,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
  RadioListTile<SingingCharacter>(
          title: const Text('Modérée'),
          value: SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
   RadioListTile<SingingCharacter>(
          title: const Text('Sévère'),
          value: SingingCharacter.tree,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
           
                              ]

                              ),
                            

                          ),
                        ),

Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text("Insuffisance\n hépatique",style: TextStyle(color: Colors.black),),
                            title : Column(
                              children :[
 RadioListTile<SingingCharacter>(
          title: const Text('Aucune'),
          value: SingingCharacter.lafayette,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
  RadioListTile<SingingCharacter>(
          title: const Text('Modérée'),
          value: SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
   RadioListTile<SingingCharacter>(
          title: const Text('Sévère'),
          value: SingingCharacter.tree,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
           
                              ]

                              ),
                            

                          ),
                        ),
          ]),
        
        isActive: _currentStep >= 3,
      )

    ];
    return _steps;
  }
}