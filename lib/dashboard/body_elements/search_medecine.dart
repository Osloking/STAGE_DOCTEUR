import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'dart:async';
import 'dart:convert';



class SearchableDropdownApp extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

List<String> localData =  ['ABILIFY 10 MG, Comprimé','ABILIFY 15 MG, Comprimé','ABSTRAL 100 µG, Comprimé sublingual','ACARBOSE LAPROPHAN 50 MG, Comprimé','ACDigest, Gélule','ACEPRIL PLUS 4 MG, Comprimé','D-BLASTIN 20 MG, Poudre pour perfusion','D-STRESS, Comprimé','EAU P.P.I. Injectable 5 ML','FABRAZYME 35 MG','GABAMOX 300 MG, Gélule'];

class _AppState extends State<SearchableDropdownApp> {
  Map<String, String> selectedValueMap = Map();

  @override
  void initState() {
    //selectedValueMap["local"] = null;
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: new SingleChildScrollView(
          child: Container(
            height: 571,
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
                      'Dropdown with local data : ',
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

  
}