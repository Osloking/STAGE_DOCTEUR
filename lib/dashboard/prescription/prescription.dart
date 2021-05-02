import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import'../patient_details/patient_details.dart';
import'../prescription/ordonnance_result.dart';

enum SingingCharacter { lafayette, jefferson,tree }
class Prescrire  extends StatefulWidget {
 

  @override
  _PrescrireState createState() => new _PrescrireState();
}

class _PrescrireState extends State<Prescrire> {
  int _currentStep = 0;
  SingingCharacter? _character = SingingCharacter.lafayette;

  String? dropdownvalue = 'Apple';

  var items =  ['Apple','Banana','Grapes','Orange','watermelon','Pineapple','hhh'];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: AppBar(title: Text("Préscription en ligne"),
        backgroundColor: Color(0xff6874ec),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stepper(
          type: StepperType.horizontal,
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
      ),
    );
  }

  List<Step> _mySteps() {
    List<Step> _steps = [
      Step(
        title: Text(
          'Médicament',
          style: TextStyle(fontSize: 10),
        ),
        content: 
    Card(
                          margin: EdgeInsets.all(5),
                          child: ListTile(
                            leading :FlatButton(
                child: Text('Ajouter un Médicament'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
              ),
              title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: dropdownvalue,

                  icon: Icon(Icons.keyboard_arrow_down),

                  items:items.map((String items) {
                       return DropdownMenuItem(
                           value: items,
                           child: Text(items)
                       );
                  }
                  ).toList(),

                onChanged: (String? newValue){
                  setState(() {
                    dropdownvalue = newValue;
                  });
                },

              ),
            ],
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