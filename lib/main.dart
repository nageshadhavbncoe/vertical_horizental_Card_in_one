import 'package:flutter/material.dart';
import 'package:hap_agency_screen/forgetpassword.dart';
import 'package:hap_agency_screen/login.dart';
import 'package:hap_agency_screen/practice_ui.dart';

import 'package:hap_agency_screen/something/after_front.dart';
import 'package:hap_agency_screen/something/backscreen.dart';
import 'package:hap_agency_screen/something/front_screen.dart';

import 'practice_ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:Login(), 
      //Something(),
      routes: <String, WidgetBuilder> {
    '/something': (BuildContext context) =>  Something(),
    '/backscreen' : (BuildContext context) =>  BackScreen(),
    '/frontscreen' : (BuildContext context) =>  FrontScreen(),
    '/afterfront' : (BuildContext context) =>  AfterFront(),
    '/login':(BuildContext context)=>Login(),
    '/forgetpassword':(BuildContext context)=>ForgetPassword(),
  },
      //Registar(), 
      //StudentList(),
    );
  }
}

