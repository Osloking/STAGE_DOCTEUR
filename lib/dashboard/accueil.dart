import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        backgroundColor: Color(0xfffb5d04),
        title: Image.asset(
          'assets/images/planetdiscountslogo111.png',
          width: 130,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.person,
                size: 30,
                color: Color(0xff333333),
              ),
              onPressed: () => {}),
          IconButton(
              icon: Icon(
                Icons.shopping_basket,
                size: 30,
                color: Color(0xff333333),
              ),
              onPressed: () =>
                 {}),
        ],
      ),
     /* body: HomeBody(),*/

    );
  }
}