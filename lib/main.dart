import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:table_calendar/table_calendar.dart';

import 'package:flutter/services.dart';
import'./dashboard/dashboard.dart';
import'json_read.dart';
import '../dashboard/accueil.dart';
import'load_json.dart';
import '../dashboard/display_data/display_calender.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: Accueil(),
    );
  }
}