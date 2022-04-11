import 'package:flutter/material.dart';
import 'package:flutter_project/HomeScreen.dart';
import 'package:flutter_project/LoginScreen.dart';
import 'package:flutter_project/UsersScreen.dart';

import 'MessangerScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserScreen(),
    );
  }
  
}