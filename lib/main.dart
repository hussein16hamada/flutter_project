import 'package:flutter/material.dart';
import 'package:flutter_project/modules/counter/CounterScreen.dart';
import 'package:flutter_project/modules/home/HomeScreen.dart';
import 'package:flutter_project/modules/login/LoginScreen.dart';
import 'package:flutter_project/modules/users/UsersScreen.dart';

import 'modules/messenger/MessangerScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
  
}