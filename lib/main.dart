import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import'./dashboard/dashboard.dart';

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
      home: DashBoard(),
    );
  }
}

